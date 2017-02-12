
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="This is a little Python library which provides an easy way for creating complex constants."
HOMEPAGE=""
SRC_URI="https://github.com/oblalex/candv/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND="
        dev-python/six
        "
RDEPEND="${DEPEND}"

python_prepare_all() {
	rm -rf ${S}/tests

	distutils-r1_python_prepare_all
}


python_install_all() {
        distutils-r1_python_install_all

}
