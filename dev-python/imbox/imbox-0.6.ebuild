
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="Python IMAP for Human beings"
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/i/imbox/imbox-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND="dev-python/six"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
