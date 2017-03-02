
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DOWN_PN="elasticsearch"
REAL_PV="0.4.5"
DESCRIPTION="Python client for Elasticsearch"
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${DOWN_PN}/${DOWN_PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${DOWN_PN}-${REAL_PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND="dev-python/urllib3"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
