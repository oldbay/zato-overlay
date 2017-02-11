#!! hz more errors!!

EAPI=5

PYTHON_COMPAT=(python2_7)

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="1.3.0"
DESCRIPTION="ZATO-3 patch. Spring Python"
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.RC1.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/${PN}-${REAL_PV}.RC1"

DEPEND=""
RDEPEND="${DEPEND}"

python_prepare_all() {
	epatch "${FILESDIR}"/factory.py-${REAL_PV}.diff
	distutils-r1_python_prepare_all
}


python_install_all() {
        distutils-r1_python_install_all

}
