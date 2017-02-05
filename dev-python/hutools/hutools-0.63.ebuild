
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PN="huTools"
DESCRIPTION="Various tiny tools and toys to make Python coding less work more fun."
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/h/huTools/${REAL_PN}-${PV}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/${REAL_PN}-${PV}"

DEPEND="
        dev-python/decorator
		dev-python/simplejson
		"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
