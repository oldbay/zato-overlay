
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

DESCRIPTION="Python Sorted Container Types: SortedList, SortedDict, and SortedSet"
HOMEPAGE=""
SRC_URI="https://pypi.python.org/packages/source/s/sortedcontainers/sortedcontainers-${PV}.tar.gz"

LICENSE="Apache 2.0"
SLOT="0"
KEYWORDS=""
# IUSE="debug"
# S="${WORKDIR}/${PN}-${PV}"

DEPEND=""
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
