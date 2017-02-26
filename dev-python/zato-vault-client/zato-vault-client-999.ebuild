
EAPI=5

PYTHON_COMPAT=( python2_7 )

EGIT_REPO_URI="https://github.com/zatosource/zato-vault-client"
EGIT_BRANCH="main"
# EGIT_COMMIT="25bf982"

# PYTHON_DEPEND="2"

inherit distutils git-2

DESCRIPTION="Vault client for zato"
HOMEPAGE=""

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
# IUSE="debug"

DEPEND="
    dev-python/hvac
    dev-python/six
	"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils_python_install_all

}
