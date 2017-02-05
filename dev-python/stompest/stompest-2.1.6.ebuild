
EAPI=5

PYTHON_COMPAT=(python2_7)

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="STOMP library for Python including a synchronous client."
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/s/stompest/stompest-${PV}.tar.gz"

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
