#!/usr/bin/env sh

set -e

TAG=$(grep -P 'DISTRO_VERSION\s*=\s*".+"' meta-hulks/conf/distro/HULKs-DNT-OS.conf | cut -d\" -f2)
git tag ${TAG}
echo "Created tag ${TAG}"
echo "Please check that the tag is correct and then execute:"
echo
echo "git push origin ${TAG}"
echo
