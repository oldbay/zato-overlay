
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PN="huTools"
REAL_PV="0.63"
DESCRIPTION="Various tiny tools and toys to make Python coding less work more fun."
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${REAL_PN}/${REAL_PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${REAL_PN}-${REAL_PV}"

LICENSE="GPL"
SLOT="0"
KEYWORDS=""

DEPEND="
        dev-python/decorator
		dev-python/simplejson
		"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
