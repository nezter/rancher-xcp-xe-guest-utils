#!/bin/sh
VERSION="8.1"
FILENAME="v${VERSION}.tar.gz"
PACKAGE="https://github.com/xcp-ng/xe-guest-utilities/archive/XCP-ng-${FILENAME}"

cd /tmp

if [[ ! -e "${FILENAME}" ]]; then
	wget "$PACKAGE"
fi

tar xzf ${FILENAME} &&
	cd xe-guest-utilities-${VERSION} &&
	make build &&
	cp -ar build/stage/* /dist/
