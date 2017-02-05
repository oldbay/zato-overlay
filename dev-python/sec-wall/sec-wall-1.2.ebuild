
EAPI=5

PYTHON_COMPAT=(python2_7)

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="A feature packed security proxy"
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/s/sec-wall/sec-wall-${PV}.tar.gz"

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
