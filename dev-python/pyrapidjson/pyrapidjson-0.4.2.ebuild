
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="Python Interface for rapidjson(JSON parser and generator)."
HOMEPAGE=""
SRC_URI="https://github.com/hhatto/pyrapidjson/archive/ver${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/${PN}-ver${PV}"

DEPEND=""
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
