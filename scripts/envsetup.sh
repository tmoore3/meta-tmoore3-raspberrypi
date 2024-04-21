#!/bin/sh


#----------------------------------------------
# Init BUILD_DIR variable
#
if [ -z "${BUILD_DIR}" ] && ! [ -z "$MACHINE" ]; then
    # In case DISTRO and MACHINE are provided use them to init BUILD_DIR
    BUILD_DIR="build-$MACHINE"
fi

CWD=$(pwd)
TEMPLATECONF=$CWD/sources/meta-tmoore3-raspberrypi/conf/templates
OEROOT=$CWD/sources/poky

. $OEROOT/oe-init-build-env $CWD/$BUILD_DIR

# Set MACHINE in local.conf file
if [ -z "$(grep '^MACHINE =' conf/local.conf)" ]; then
    # Apply selected MACHINE in local conf file
    sed -e 's/^\(MACHINE.*\)$/#\1\nMACHINE = "'"$MACHINE"'"/' -i conf/local.conf
else
    echo "[WARNING] MACHINE is already set in local.conf. Nothing done..."
fi
