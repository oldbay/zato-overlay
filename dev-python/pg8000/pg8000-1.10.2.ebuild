
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="PostgreSQL interface library pg8000"
HOMEPAGE=""
SRC_URI="https://github.com/mfenniak/pg8000/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND=""
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
