
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="Concurrent logging handler (drop-in replacement for RotatingFileHandler)"
HOMEPAGE=""
SRC_URI="https://launchpad.net/python-concurrent-log-handler/trunk/${PV}/+download/ConcurrentLogHandler-${PV}.tar.gz"

LICENSE="Apache"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/ConcurrentLogHandler-${PV}"

DEPEND=""
RDEPEND=""

python_install_all() {
        distutils-r1_python_install_all

}
