#!/usr/bin/env python3
import json
import os
from pathlib import Path
import re
import subprocess

releases = json.loads(subprocess.check_output([
    'gh', 'api', 'repos/txchen/altty/releases?per_page=100'
]))
releases = [r for r in releases if not r['draft'] and not r['prerelease']
            and re.fullmatch(r'\d+\.\d+\.\d+', r['tag_name'])]
version_key = lambda s: tuple(map(int, s.split('.')))
if not releases:
    print('No stable release yet.')
    raise SystemExit(0)
release = max(releases, key=lambda r: version_key(r['tag_name']))
version = release['tag_name']
current = Path('Casks/altty.rb')
if current.exists():
    previous = re.search(r'^  version "([^"]+)"', current.read_text(), re.M).group(1)
    if version_key(previous) >= version_key(version):
        print(f'Already at {previous}.')
        raise SystemExit(0)
    Path('.build/previous').mkdir(parents=True, exist_ok=True)
    Path('.build/previous/altty.rb').write_text(current.read_text())
required = {f'Altty-{version}-arm64.zip', 'checksums.txt', 'release-metadata.json'}
assert required <= {a['name'] for a in release['assets']}, 'Release assets are incomplete'
Path('.build').mkdir(exist_ok=True)
Path('.build/release.json').write_text(json.dumps(release))
with open(os.environ['GITHUB_OUTPUT'], 'a') as output:
    output.write(f'version={version}\nchanged=true\n')
print(f'Updating to {version}.')
