
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="psycopg2 integration with coroutine libraries"
HOMEPAGE=""
SRC_URI="http://pypi.python.org/packages/source/p/psycogreen/psycogreen-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND="dev-python/psycopg:2"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
