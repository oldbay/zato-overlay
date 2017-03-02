
EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} )

inherit distutils-r1

REAL_PV="1.8.1"
DESCRIPTION="Jalali datetime binding for python"
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${PN}-${REAL_PV}

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"

DEPEND=""
RDEPEND=""

