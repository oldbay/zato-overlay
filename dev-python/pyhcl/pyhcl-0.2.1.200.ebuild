
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="0.2.1"
DESCRIPTION="HCL configuration parser for python"
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-${REAL_PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND="dev-python/ply"
RDEPEND="${DEPEND}"

python_prepare_all() {
	cp "${FILESDIR}"/requirements.txt ${S}

	distutils-r1_python_prepare_all
}

python_install_all() {
        distutils-r1_python_install_all

}
