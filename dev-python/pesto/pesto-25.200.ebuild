
EAPI=5

PYTHON_COMPAT=(python2_7)

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="25"
DESCRIPTION="Library for WSGI applications"
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-${REAL_PV}"

LICENSE="Apache"
SLOT="0"
KEYWORDS=""

DEPEND=">=dev-python/repoze-lru-0.3"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
