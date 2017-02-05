
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="HCL configuration parser for python"
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/p/pyhcl/pyhcl-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND="dev-python/ply"
RDEPEND="${DEPEND}"

python_prepare_all() {
	cp "${FILESDIR}"/requirements.txt ${S}

	distutils-r1_python_prepare_all
}

python_install_all() {
        distutils-r1_python_install_all

}
