
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="0.1.2.6"
DESCRIPTION="Contains asdict and fromdict methods for SQL-Alchemy declarative models"
HOMEPAGE=""
SRC_URI="https://github.com/danielholmstrom/${PN}/archive/v${REAL_PV}.tar.gz -> ${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-${REAL_PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND="
        dev-python/sqlalchemy
        "
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
