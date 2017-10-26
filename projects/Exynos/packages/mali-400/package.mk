# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="mali-400"
PKG_VERSION="r5p0.hk4412.x11"
PKG_SHA256="643c398046488f81d323efb669a49f620a2f662b23c5aacc146abdae6424fd1e"
PKG_ARCH="arm"
PKG_LICENSE="other"
PKG_SITE="http://builder.mdrjr.net/tools/u3 & https://mesa3d.org"
PKG_URL="${ODROID_MIRROR}/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="libdrm libX11 libXfixes libXext"
PKG_SECTION="graphics"
PKG_SHORTDESC="OpenGL ES user-space binary for the ARM (Hardkernel U2/U3) Mali 400 GPU"
PKG_LONGDESC="OpenGL ES user-space binary for the ARM (Hardkernel U2/U3) Mali 400 GPU"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib
    cp -aPR usr/lib/libEGL.so* $INSTALL/usr/lib
    cp -aPR usr/lib/libGLESv2.so* $INSTALL/usr/lib
    cp -aPR usr/lib/libMali.so $INSTALL/usr/lib

  mkdir -p $SYSROOT_PREFIX
    cp -aPR * $SYSROOT_PREFIX/
}
