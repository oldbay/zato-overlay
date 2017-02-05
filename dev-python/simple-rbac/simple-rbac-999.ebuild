
EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} )

EGIT_REPO_URI="https://github.com/tonyseek/simple-rbac"
# EGIT_PROJECT=""
# EGIT_COMMIT=

# PYTHON_DEPEND="2"

inherit distutils git-2

DESCRIPTION="A simple role based access control utility"
HOMEPAGE=""

LICENSE="GPL"
SLOT="0"
KEYWORDS=""
# IUSE="debug"

DEPEND=""
RDEPEND=""

python_install_all() {
        distutils_python_install_all

}
