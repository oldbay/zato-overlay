
EAPI=5

PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1

REAL_PV="3.5.3.0"
DESCRIPTION="Type Hints for Python"
HOMEPAGE=""
SRC_URI="mirror://pypi/t/${PN}/${PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${PN}-${REAL_PV}

LICENSE="GPL"
SLOT="0"
IUSE=""

DEPEND=""
RDPEND=""
