
EAPI=5

PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1

REAL_PV="1.1.3"
DESCRIPTION="Promises, promises, promises."
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${PN}-${REAL_PV}

LICENSE="GPL"
SLOT="0"
IUSE=""

DEPEND=""
RDPEND=""
