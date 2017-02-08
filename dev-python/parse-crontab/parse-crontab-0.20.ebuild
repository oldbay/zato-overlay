
EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} )

REAL_PN="crontab"
SRC_URI="mirror://pypi/${REAL_PN:0:1}/${REAL_PN}/${REAL_PN}-${PV}.tar.gz"
S=${WORKDIR}/${REAL_PN}-${PV}

# PYTHON_DEPEND="2"

inherit distutils

DESCRIPTION="Python crontab parser"
HOMEPAGE=""

LICENSE="LGPL"
SLOT="0"
KEYWORDS=""
# IUSE="debug"

DEPEND=""
RDEPEND=""

python_install_all() {
        distutils_python_install_all

}
