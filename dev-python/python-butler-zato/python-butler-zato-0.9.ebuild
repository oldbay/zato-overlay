
EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} )

# PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PN="python-butler"
DESCRIPTION="Python Dictionaries and Lists on Steroids"
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/p/${REAL_PN}/${REAL_PN}-${PV}.tar.gz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS=""
S="${WORKDIR}/${REAL_PN}-${PV}"

DEPEND=""
RDEPEND=""

python_prepare_all() {
	epatch "${FILESDIR}"/__init__.py-${PV}.diff

	distutils-r1_python_prepare_all
}

python_install_all() {
        distutils-r1_python_install_all

}
