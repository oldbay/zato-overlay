
EAPI=5

PYTHON_COMPAT=(python2_7)

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="OpenERP Client Library allows to easily interact with OpenERP in Python."
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/o/openerp-client-lib/${P}.tar.gz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND=""
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
