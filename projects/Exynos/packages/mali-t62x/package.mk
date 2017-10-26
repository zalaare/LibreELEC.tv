# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="mali-t62x"
PKG_VERSION="r12p0.04rel0"
PKG_SHA256="643c398046488f81d323efb669a49f620a2f662b23c5aacc146abdae6424fd1e"
PKG_ARCH="arm"
PKG_LICENSE="other"
PKG_SITE="https://developer.arm.com/products/software/mali-drivers/user-space & https://mesa3d.org"
PKG_URL="${ODROID_MIRROR}/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="libdrm wayland"
PKG_SECTION="graphics"
PKG_SHORTDESC="OpenGL ES user-space binary for the ARM Mali t62x GPU"
PKG_LONGDESC="OpenGL ES user-space binary for the ARM mali t62x GPU"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib
    cp -aPR usr/lib/libEGL.so* $INSTALL/usr/lib
    cp -aPR usr/lib/libgbm.so* $INSTALL/usr/lib
    cp -aPR usr/lib/libGLESv2.so* $INSTALL/usr/lib
    cp -aPR usr/lib/libmali.so $INSTALL/usr/lib
    cp -aPR usr/lib/libwayland-egl.so* $INSTALL/usr/lib

  mkdir -p $SYSROOT_PREFIX
    cp -aPR * $SYSROOT_PREFIX/
}
