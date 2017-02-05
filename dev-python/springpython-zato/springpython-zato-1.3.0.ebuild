#!! hz more errors!!

EAPI=5

PYTHON_COMPAT=(python2_7)

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PN="springpython"
DESCRIPTION="Spring Python"
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${REAL_PN}/${REAL_PN}-${PV}.RC1.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/${REAL_PN}-${PV}.RC1"

DEPEND=""
RDEPEND="${DEPEND}"

python_prepare_all() {
	epatch "${FILESDIR}"/factory.py-${PV}.diff
	distutils-r1_python_prepare_all
}


python_install_all() {
        distutils-r1_python_install_all

}
