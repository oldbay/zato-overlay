
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="Converts between Gregorian dates and other calendar systems."
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/c/convertdate/convertdate-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND=">=sci-astronomy/pyephem-3.7.6.0"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}