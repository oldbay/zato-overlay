
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="0.2.16"
DESCRIPTION="HashiCorp Vault API client"
HOMEPAGE=""
SRC_URI="https://github.com/ianunruh/hvac/archive/v${REAL_PV}.tar.gz -> ${PN}-${REAL_PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
S="${WORKDIR}/${PN}-${REAL_PV}"

DEPEND="
        =dev-python/requests-2.7.0.200
        =dev-python/pyhcl-0.2.1
		"
RDEPEND="${DEPEND}"

python_prepare_all() {
	epatch "${FILESDIR}"/__init__.py-${REAL_PV}.diff

	distutils-r1_python_prepare_all
}

python_install_all() {
        distutils-r1_python_install_all

}
