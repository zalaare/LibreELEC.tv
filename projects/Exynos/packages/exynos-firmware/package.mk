# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="exynos-firmware"
PKG_VERSION="20171025.bf04291"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE=""
PKG_SITE="http://git.kernel.org/cgit/linux/kernel/git/firmware/linux-firmware.git"
PKG_URL="$ODROID_MIRROR/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="firmware"
PKG_SHORTDESC="samsung-firmware: firmwares for various samsung devices"
PKG_LONGDESC="samsung-firmware: firmwares for various samsung devices"
PKG_TOOLCHAIN="manual"
PKG_IS_ADDON="no"

make_target() {
  : # nothing todo
}

makeinstall_target() {
  DESTDIR=$INSTALL/$(get_kernel_overlay_dir)
  mkdir -p $DESTDIR/s5p-mfc
  cp -R * $DESTDIR
  for fw in s5p-* ; do
    ln -sf ../${fw} $DESTDIR/s5p-mfc/${fw}
  done
}
