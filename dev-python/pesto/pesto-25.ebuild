
EAPI=5

PYTHON_COMPAT=(python2_7)

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="Library for WSGI applications"
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/p/pesto/${P}.tar.gz"

LICENSE="Apache"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND=">=dev-python/repoze-lru-0.3"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
