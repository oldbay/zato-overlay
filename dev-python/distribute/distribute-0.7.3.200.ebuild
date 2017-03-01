EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} )

inherit distutils-r1

REAL_PV="0.7.3"
DESCRIPTION="distribute legacy wrapper"
HOMEPAGE="http://packages.python.org/distribute"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.zip"
S=${WORKDIR}/${PN}-${REAL_PV}

LICENSE="PSF ZPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=">=dev-python/setuptools-0.7[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
