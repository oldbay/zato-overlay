
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="1.0"
DESCRIPTION="psycopg2 integration with coroutine libraries"
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-${REAL_PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND="dev-python/psycopg:2"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
