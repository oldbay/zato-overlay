
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="0.9.1"
DESCRIPTION="Chainable, iterative interface to querying Elasticsearch"
HOMEPAGE=""
SRC_URI="https://github.com/mozilla/${PN}/archive/v${REAL_PV}.tar.gz -> ${PN}-${REAL_PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/${PN}-${REAL_PV}"

DEPEND=">=dev-python/elasticsearch-py-0.4.5"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
