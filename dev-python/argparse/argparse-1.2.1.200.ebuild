
EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} pypy pypy3 )
inherit distutils-r1

REAL_PV="1.2.1"
DESCRIPTION="Python command-line parsing library"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${PN}-${REAL_PV}

LICENSE="GPL"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND=""
