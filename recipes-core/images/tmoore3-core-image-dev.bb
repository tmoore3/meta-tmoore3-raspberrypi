DESCRIPTION = "A console-only image with decelopment tools \
installed."

IMAGE_FEATURES += "ssh-server-openssh"

IMAGE_INSTALL = "\
    packagegroup-core-boot \
    packagegroup-core-full-cmdline \
    ${CORE_IMAGE_EXTRA_INSTALL} \
    linux-firmware-bcm43430 \
    "

inherit core-image
