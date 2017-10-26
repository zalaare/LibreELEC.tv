# 5422

This is a SoC devices for Samsung Exynos Octa 5 (5422)

**Build**

* `PROJECT=Exynos DEVICE=5422 ARCH=arm UBOOT_SYSTEM=odroid_xu3 make image`
* `PROJECT=Exynos DEVICE=5422 ARCH=arm UBOOT_SYSTEM=odroid_xu4 make image`

**How to flash your device**

1. flash image to an sd-card
2. insert sd-card into device
3. power-on and watch LibreELEC boot
