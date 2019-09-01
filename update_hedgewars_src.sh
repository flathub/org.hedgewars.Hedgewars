#!/bin/bash
set -e

rev_id="$1"
if [ -z "${rev_id}" ]; then
	echo "Usage: $(basename "$0") REVISION_ID" >&2
	exit 1
fi
if [ -e hedgewars_src -a ! -e hedgewars_src/.hg ]; then
	rm -rf hedgewars_src
fi
if [ ! -e hedgewars_src ]; then
	hg clone --rev=1 https://hg.hedgewars.org/hedgewars/ hedgewars_src
fi
cd hedgewars_src
echo '*' >.hg/.gitignore
rm -f share/version_info.txt || true
if [ -n "$(hg status)" ]; then
        echo 'Repository not clean' >&2
        exit 1
fi
hg pull -u
hg up "${rev_id}"
printf 'rev %s\nhash %s\n' "$(hg id --num)" "$(hg id --id)" >share/version_info.txt
