
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="0.8"
DESCRIPTION="Formats docstrings to follow PEP 257."
HOMEPAGE=""
SRC_URI="https://github.com/myint/${PN}/archive/v${REAL_PV}.tar.gz -> ${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-${REAL_PV}"

LICENSE="GPL"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
