# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} pypy3 )
inherit distutils-r1

DESCRIPTION="A built-package format for Python"
HOMEPAGE="https://pypi.org/project/wheel/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/pypa/wheel/archive/${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86 ~x64-macos"

RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]"

distutils_enable_tests --install pytest

src_prepare() {
	sed \
		-e 's:--cov --cov-config=setup.cfg::g' \
		-i setup.cfg || die

	# unbundle packaging
	rm -r src/wheel/vendored || die
	sed -i -e 's:\.vendored\.::' src/wheel/*.py || die

	distutils-r1_src_prepare
}
