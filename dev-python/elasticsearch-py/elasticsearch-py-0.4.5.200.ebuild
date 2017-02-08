
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DOWN_PN="elasticsearch"
REAL_PV="0.4.5"
DESCRIPTION="Python client for Elasticsearch"
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/e/${DOWN_PN}/${DOWN_PN}-${REAL_PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/${DOWN_PN}-${REAL_PV}"

#!?ver?urllib3 >=1.5 <2.0

DEPEND="dev-python/urllib3"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
