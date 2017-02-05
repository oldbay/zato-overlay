
EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} )

EGIT_REPO_URI="https://github.com/dsuch/globre-lgpl"
# EGIT_PROJECT=""
# EGIT_COMMIT=

# PYTHON_DEPEND="2"

inherit distutils git-2

DESCRIPTION="Converts a glob-matching pattern to a regular expression, using Apache Cocoon style rules (with some extensions)."
HOMEPAGE=""

LICENSE="LGPL"
SLOT="0"
KEYWORDS=""
# IUSE="debug"

DEPEND="
    dev-python/distribute
	!!dev-python/globre
	"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils_python_install_all

}
