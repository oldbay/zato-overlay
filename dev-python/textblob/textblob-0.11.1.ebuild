
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="Simple, Pythonic text processing."
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/t/textblob/textblob-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND=">=dev-python/nltk-3.1"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
