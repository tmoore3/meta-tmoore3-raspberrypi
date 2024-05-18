FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
    file://fragment-01-builtin-usbotg.cfg \
    file://0001-joy-bonnet-rpi0w.patch \
    file://fragment-02-joy-bonnet-rpi0w.cfg \
"
