
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PN="elasticutils"
DESCRIPTION="Chainable, iterative interface to querying Elasticsearch"
HOMEPAGE=""
SRC_URI="https://github.com/mozilla/elasticutils/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/${REAL_PN}-${PV}"

DEPEND="=dev-python/elasticsearch-zato-0.4.5"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
