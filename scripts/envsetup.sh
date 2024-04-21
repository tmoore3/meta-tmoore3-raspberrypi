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
