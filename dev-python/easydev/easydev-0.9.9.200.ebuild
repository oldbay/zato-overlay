
EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} )

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="0.9.9"
DESCRIPTION="Common utilities to ease the development of Python packages"
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-${REAL_PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND="
        dev-python/colorama
		dev-python/pexpect
		dev-python/appdirs
        "
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
