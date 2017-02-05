
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PN="elasticsearch-py"
DESCRIPTION="Python client for Elasticsearch"
HOMEPAGE=""
SRC_URI="https://github.com/mozilla/elasticutils/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/${REAL_PN}-${PV}"

#!?ver?urllib3 >=1.5 <2.0

DEPEND="dev-python/urllib3"
RDEPEND="!dev-python/elasticsearch-py"

python_install_all() {
        distutils-r1_python_install_all

}
