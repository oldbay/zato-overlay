
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="Date Api that support Hijri Umalqurra calendar"
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/u/umalqurra/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
