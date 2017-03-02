
EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} )

# PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="0.9"
DESCRIPTION="ZATO-3 patch. Python Dictionaries and Lists on Steroids"
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-${REAL_PV}"

LICENSE="LGPL"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND=""

python_prepare_all() {
	epatch "${FILESDIR}"/__init__.py-${REAL_PV}.diff

	distutils-r1_python_prepare_all
}

python_install_all() {
        distutils-r1_python_install_all

}
