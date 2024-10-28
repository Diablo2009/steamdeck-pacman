pkgname=steamdeck-pacman
pkgver=1.1.1
pkgrel=1
pkgdesc="A way to use pacman on the Steam Deck without messing up your system."
arch=('x86_64')
url="https://github.com/Diablo2009/steamdeck-pacman"
depends=('pacman')
source=('pkg.sh' 'pkg-key.sh' 'pkg-conf.sh' 'pkg-db-upgrade.sh' 'pkg-init.sh' 'pacman.conf' 'mirrorlist')
provides=('pkg' 'pkg-key' 'pkg-conf' 'pkg-db-upgrade')
license=('CC0-1.0')
sha512sums=('SKIP')
package() {
    mkdir -p "${pkgdir}/home/$pkgname/db"
    mkdir -p "${pkgdir}/home/$pkgname/pacman/usr/bin"
    mkdir -p "${pkgdir}/home/$pkgname/pacman/etc/pacman.d"
    ln -s /opt "${pkgdir}/home/$pkgname/pacman/opt"
    ln -s /srv "${pkgdir}/home/$pkgname/pacman/srv"
    cp "${srcdir}/pkg.sh" "${pkgdir}/home/$pkgname/pacman/usr/bin/pkg"
    chmod +x "${pkgdir}/home/$pkgname/pacman/usr/bin/pkg"
    cp "${srcdir}/pkg-key.sh" "${pkgdir}/home/$pkgname/pacman/usr/bin/pkg-key"
    chmod +x "${pkgdir}/home/$pkgname/pacman/usr/bin/pkg-key"
    cp "${srcdir}/pkg-conf.sh" "${pkgdir}/home/$pkgname/pacman/usr/bin/pkg-conf"
    chmod +x "${pkgdir}/home/$pkgname/pacman/usr/bin/pkg-conf"
    cp "${srcdir}/pkg-db-upgrade.sh" "${pkgdir}/home/$pkgname/pacman/usr/bin/pkg-db-upgrade"
    chmod +x "${pkgdir}/home/$pkgname/pacman/usr/bin/pkg-db-upgrade"
    cp "${srcdir}/pkg-init.sh" "${pkgdir}/home/$pkgname/pacman/usr/bin/pkg-init"
    chmod +x "${pkgdir}/home/$pkgname/pacman/usr/bin/pkg-init"
    cp "${srcdir}/mirrorlist" "${pkgdir}/home/$pkgname/pacman/etc/pacman.d/mirrorlist"
    cp "${srcdir}/pacman.conf" "${pkgdir}/home/$pkgname/pacman/etc/pacman.conf"
}
