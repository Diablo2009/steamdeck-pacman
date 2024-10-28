pkgname=steamdeck-pacman
pkgver=1.0.2
pkgrel=1
pkgdesc="A way to use pacman on the Steam Deck without turning off readonly mode."
arch=('x86_64')
depends=('pacman')
source=('pkg.sh' 'pkg-key.sh' 'pkg-conf.sh' 'pkg-db-upgrade.sh' 'pkg-init.sh' 'pacman.conf' 'mirrorlist' 'export-cmd.txt')
provides=('pkg' 'pkg-key' 'pkg-conf' 'pkg-db-upgrade')
license=('CC0-1.0')
sha512sums=('SKIP')
package() {
    mkdir -p "${pkgdir}/home/deck/.local/bin"
    mkdir -p "${pkgdir}/home/deck/.local/$pkgname/db"
    cp "${srcdir}/pkg.sh" "${pkgdir}/home/deck/.local/bin/pkg"
    chmod +x "${pkgdir}/home/deck/.local/bin/pkg"
    cp "${srcdir}/pkg-key.sh" "${pkgdir}/home/deck/.local/bin/pkg-key"
    chmod +x "${pkgdir}/home/deck/.local/bin/pkg-key"
    cp "${srcdir}/pkg-conf.sh" "${pkgdir}/home/deck/.local/bin/pkg-conf"
    chmod +x "${pkgdir}/home/deck/.local/bin/pkg-conf"
    cp "${srcdir}/pkg-db-upgrade.sh" "${pkgdir}/home/deck/.local/bin/pkg-db-upgrade"
    chmod +x "${pkgdir}/home/deck/.local/bin/pkg-db-upgrade"
    cp "${srcdir}/pkg-init.sh" "${pkgdir}/home/deck/.local/bin/pkg-init"
    chmod +x "${pkgdir}/home/deck/.local/bin/pkg-init"
    cp "${srcdir}/mirrorlist" "${pkgdir}/home/deck/.local/$pkgname/mirrorlist"
    cp "${srcdir}/pacman.conf" "${pkgdir}/home/deck/.local/$pkgname/pacman.conf"
    cp "${srcdir}/export-cmd.txt" "${pkgdir}/home/deck/.local/$pkgname/export-cmd.txt"
}
post_install() {
    /home/deck/.loca/bin/pkg-key --init
    /home/deck/.loca/bin/pkg-key --populate
    echo $(cat /home/deck/.local/steamdeck-pacman/export-cmd.txt) >> /home/deck/.bashrc
    sleep 1
    rm -rf /home/deck/.local/steamdeck-pacman/export-cmd.txt
}
