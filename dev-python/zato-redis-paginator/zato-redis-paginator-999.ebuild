
EAPI=5

PYTHON_COMPAT=( python2_7 )

EGIT_REPO_URI="https://github.com/zatosource/zato-redis-paginator"
# EGIT_PROJECT=""
EGIT_COMMIT="42821f71307f8717315b543d55b473abd2db44de"

# PYTHON_DEPEND="2"

inherit distutils git-2

DESCRIPTION="Django-like pagination for Redis"
HOMEPAGE=""

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
# IUSE="debug"

DEPEND="
    >=dev-python/django-1.3.1
	>=dev-python/redis-py-2.4.13
	"
RDEPEND="${DEPEND}"

python_install_all() {
        distutils_python_install_all

}
