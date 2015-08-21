#!/bin/bash

pkgver=2.5.1

wget https://github.com/shimmerproject/Numix/archive/v${pkgver}.tar.gz
tar xvf v${pkgver}.tar.gz
cd Numix-${pkgver}
install -dm 755 "$pkgdir"/usr/share/themes/Numix
rm -rf .git .gitignore CREDITS LICENSE README.md
cp -dr --no-preserve='ownership' * /usr/share/themes/Numix/
rm Numix* -Rfv