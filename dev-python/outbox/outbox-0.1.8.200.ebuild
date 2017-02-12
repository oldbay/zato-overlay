
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="0.1.8"
DESCRIPTION="ZATO-3 patch. SMTP client for Humans."
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/o/${PN}/${PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${PN}-${REAL_PV}

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND=""
RDEPEND="${DEPEND}"

python_prepare_all() {
	epatch "${FILESDIR}"/outbox.py-${REAL_PV}.diff
	epatch "${FILESDIR}"/outbox.py2-${REAL_PV}.diff
	epatch "${FILESDIR}"/outbox.py3-${REAL_PV}.diff
	epatch "${FILESDIR}"/outbox.py4-${REAL_PV}.diff

	distutils-r1_python_prepare_all
}

python_install_all() {
        distutils-r1_python_install_all

}
