
EAPI=5

PYTHON_COMPAT=( python{2_7,3_{4,5}} pypy )

inherit distutils-r1 eutils

REAL_PV="1.4.1"
DESCRIPTION="ZATO-3 patch. JSON Web Token implementation in Python"
HOMEPAGE="https://github.com/progrium/pyjwt https://pypi.python.org/pypi/PyJWT/"
SRC_URI="https://github.com/jpadilla/pyjwt/archive/${REAL_PV}.tar.gz -> ${PN}-${REAL_PV}.tar.gz"

LICENSE=" MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
# IUSE="test"

RDEPEND="!dev-python/pyjwt"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	"

S="${WORKDIR}"/${PN}-${REAL_PV}

python_prepare_all() {
	epatch "${FILESDIR}"/pytest-${REAL_PV}.patch
	find . -name '__pycache__' -prune -exec rm -rf {} \; || die "Cleaning __pycache__ failed"
	find . -name '*.pyc' -exec rm -f {} \; || die "Cleaing *.pyc failed"

	distutils-r1_python_prepare_all
}

pkg_postinst() {
	elog "Available optional features:"
	optfeature "cryptography" dev-python/cryptography
	optfeature "flake8" dev-python/flake8

	ewarn "flake8 feature requires 'flake8-import-order' and 'pep8-naming', which are not in portage yet"
}
