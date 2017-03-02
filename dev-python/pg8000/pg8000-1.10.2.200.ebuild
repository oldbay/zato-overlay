
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="1.10.2"
DESCRIPTION="PostgreSQL interface library pg8000"
HOMEPAGE=""
SRC_URI="https://github.com/mfenniak/${PN}/archive/${REAL_PV}.tar.gz -> ${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-${REAL_PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
