# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit apache-module depend.apache tmpfiles

DESCRIPTION="An Apache authentication module using Kerberos"
HOMEPAGE="http://modauthkerb.sourceforge.net/"
SRC_URI="mirror://sourceforge/project/modauthkerb/${PN}/${P}/${P}.tar.gz
	https://dev.gentoo.org/~mgorny/dist/${P}-gentoo-patchset.tar.bz2"

LICENSE="BSD openafs-krb5-a HPND"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="virtual/krb5"
RDEPEND="${DEPEND}"

APACHE2_MOD_CONF="11_${PN}"
APACHE2_MOD_DEFINE="AUTH_KERB"

DOCFILES="INSTALL README"

need_apache2

PATCHES=(
	"${WORKDIR}/${P}-gentoo-patchset"/${P}-rcopshack.patch
	"${WORKDIR}/${P}-gentoo-patchset"/${P}-fixes.patch
	"${WORKDIR}/${P}-gentoo-patchset"/${P}-s4u2proxy.patch
	"${WORKDIR}/${P}-gentoo-patchset"/${P}-httpd24.patch
	"${WORKDIR}/${P}-gentoo-patchset"/${P}-delegation.patch
	"${WORKDIR}/${P}-gentoo-patchset"/${P}-cachedir.patch
	"${WORKDIR}/${P}-gentoo-patchset"/${P}-longuser.patch
	"${WORKDIR}/${P}-gentoo-patchset"/${P}-handle-continue.patch
	"${WORKDIR}/${P}-gentoo-patchset"/${P}-heimdal.patch

	# bug #830208
	"${FILESDIR}"/${P}-api-change-krb5.patch
	# bug #673066
	"${FILESDIR}"/${P}-krb5pwd-double-free.patch
)

# Work around Bug #616612
pkg_setup() {
	_init_apache2
	_init_apache2_late
}

src_configure() {
	CFLAGS="" APXS="${APXS}" econf --with-krb5=/usr --without-krb4
}

src_compile() {
	emake
}

src_install() {
	apache-module_src_install

	dotmpfiles "${FILESDIR}"/${PN}.conf
}

pkg_postinst() {
	tmpfiles_process ${PN}.conf
}
