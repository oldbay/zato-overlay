
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PN="ConcurrentLogHandler"
REAL_PV="0.9.1"
DESCRIPTION="Concurrent logging handler (drop-in replacement for RotatingFileHandler)"
HOMEPAGE=""
SRC_URI="https://launchpad.net/python-concurrent-log-handler/trunk/${REAL_PV}/+download/${REAL_PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${REAL_PN}-${REAL_PV}

LICENSE="Apache"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND=""

python_install_all() {
        distutils-r1_python_install_all

}
