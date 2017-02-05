
EAPI=5

PYTHON_COMPAT=(python2_7)

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PN="gevent_inotifyx"
DESCRIPTION="gevent compatibility for inotifyx"
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/g/${REAL_PN}/${REAL_PN}-${PV}.tar.gz"

LICENSE="Apache"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/${REAL_PN}-${PV}"

DEPEND="
       dev-python/gevent
	   dev-python/inotifyx
	   "
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
