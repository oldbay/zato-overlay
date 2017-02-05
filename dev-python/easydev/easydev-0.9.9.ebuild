
EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} )

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="Common utilities to ease the development of Python packages"
HOMEPAGE=""
SRC_URI="https://github.com/cokelaer/easydev/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND="
        dev-python/colorama
		dev-python/pexpect
		dev-python/appdirs
        "
RDEPEND="${DEPEND}"

python_prepare_all() {
	epatch "${FILESDIR}"/multisetup.py-${PV}.patch

	distutils-r1_python_prepare_all
}

python_install_all() {
        distutils-r1_python_install_all

}
