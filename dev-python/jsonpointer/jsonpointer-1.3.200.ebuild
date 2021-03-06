# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python{2_7,3_4} pypy pypy3 )

inherit distutils-r1

REAL_PV="1.3"
DESCRIPTION="ZATO-3 patch. Identify specific nodes in a JSON document (according to draft 08)"
HOMEPAGE="https://github.com/stefankoegl/python-json-pointer https://pypi.python.org/pypi/jsonpointer/"
SRC_URI="https://github.com/stefankoegl/python-json-pointer/archive/v${REAL_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86 ~amd64-linux ~x86-linux"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

S=${WORKDIR}/python-json-pointer-${REAL_PV}

python_prepare_all() {
	epatch "${FILESDIR}"/jsonpointer.py-${REAL_PV}.diff

	distutils-r1_python_prepare_all
}

python_test() {
	"${PYTHON}" tests.py || die "Tests fail with ${EPYTHON}"
}
