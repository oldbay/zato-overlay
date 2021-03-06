# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{4,5} )

inherit distutils-r1

REAL_PV="0.7.2"
DESCRIPTION="Easily displaying tabular data in a visually appealing ASCII table format"
HOMEPAGE="https://code.google.com/p/prettytable/"
SRC_URI="mirror://pypi/P/PrettyTable/${PN}-${REAL_PV}.tar.bz2"
S=${WORKDIR}/${PN}-${REAL_PV}

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86 ~amd64-linux ~x86-linux"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=""

python_test() {
	"${PYTHON}" prettytable_test.py || die "tests failed under ${EPYTHON}"
}
