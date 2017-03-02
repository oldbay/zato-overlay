
EAPI=5

PYTHON_COMPAT=(python2_7)

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PN="gevent_inotifyx"
REAL_PV="0.1.1"
DESCRIPTION="gevent compatibility for inotifyx"
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${REAL_PN}/${REAL_PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${REAL_PN}-${REAL_PV}"

LICENSE="Apache"
SLOT="0"
KEYWORDS=""

DEPEND="
       dev-python/gevent
	   dev-python/inotifyx
	   "
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
