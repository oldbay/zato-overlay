
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="Contains asdict and fromdict methods for SQL-Alchemy declarative models"
HOMEPAGE=""
SRC_URI="https://github.com/danielholmstrom/dictalchemy/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND="
        dev-python/sqlalchemy
        "
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
