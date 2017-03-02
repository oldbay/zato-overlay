
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="0.5"
DESCRIPTION="Python Interface for rapidjson(JSON parser and generator)."
HOMEPAGE=""
SRC_URI="https://github.com/hhatto/${PN}/archive/ver${REAL_PV}.tar.gz -> ${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-ver${REAL_PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND="dev-libs/rapidjson"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
