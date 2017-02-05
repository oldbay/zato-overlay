
EAPI=5

PYTHON_COMPAT=(python2_7)

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="${PV}a4"
REAL_PN="PEAK"
REV="2486"
DESCRIPTION="The Python Enterprise Application Kit"
HOMEPAGE=""
SRC_URI="http://peak.telecommunity.com/snapshots/${REAL_PN}-${REAL_PV}.dev-r${REV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/${REAL_PN}-${REAL_PV}.dev-r${REV}"

DEPEND="dev-python/pyprotocols"
RDEPEND="${DEPEND}"

python_prepare_all() {
	cp -f "${FILESDIR}"/imports.py ${S}/src/peak/util

	distutils-r1_python_prepare_all
}

python_install_all() {
        distutils-r1_python_install_all

}
