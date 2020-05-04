#!/bin/sh
VERSION="8.1"
FILENAME="XCP-ng-v${VERSION}.tar.gz"
PACKAGE="https://github.com/xcp-ng/xe-guest-utilities/archive/${FILENAME}"

cd /tmp

if [[ ! -e "${FILENAME}" ]]; then
        wget "$PACKAGE"
fi

tar xzf ${FILENAME} &&
        cd xe-guest-utilities-XCP-ng-v${VERSION} &&
        make build &&
        cp -ar build/stage/* /dist/