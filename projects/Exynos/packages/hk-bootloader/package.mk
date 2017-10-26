# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="hk-bootloader"

case $DEVICE in
  4412) case $UBOOT_SYSTEM in
          odroid_u2|odroid_u3)
            PKG_NAME="$PKG_NAME-U2" ; PKG_VERSION="20180323.33e05ffb15"

            PKG_SHA256="add625c62b95902e1a28fb2e7fe8f601dd803f02c6e78fb43017856ab210f182"
            ;;
        esac
        ;;
  5422) case $UBOOT_SYSTEM in
          odroid_xu3|odroid_xu4)
            PKG_NAME="$PKG_NAME-XU3" ; PKG_VERSION="20180109.88af53fbce"
            PKG_SHA256="43dfb4e8e2d249bea3cf991e078931ebe87beb281560bcfaf1237b5f3faf8226"
            ;;
        esac
        ;;
esac

PKG_ARCH="any"
PKG_LICENSE="other"
PKG_SITE="http://hardkernel.com"
PKG_URL="$ODROID_MIRROR/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_TARGET_DEPENDS_TARGET="toolchain"
PKG_SHORTDESC="Hardkernel binary boot blobs"
PKG_LONGDESC="Hardkernel binary boot blobs"
PKG_TOOLCHAIN="manual"

make_target() {
  : # Do nothing
}

makeinstall_target() {
  install -D -m 0644 bl1.bin $INSTALL/usr/share/bootloader/bl1
  install -D -m 0644 bl2.bin $INSTALL/usr/share/bootloader/bl2
  install -D -m 0644 tzsw.bin $INSTALL/usr/share/bootloader/tzsw
}
