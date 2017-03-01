
EAPI=5

PYTHON_COMPAT=(python{2_7,3_4})

#PYTHON_DEPEND="2"

inherit distutils-r1

REAL_PV="0.5.1"
DESCRIPTION="Date parsing library designed to parse dates from HTML pages"
HOMEPAGE=""
SRC_URI="https://github.com/scrapinghub/${PN}/archive/v${REAL_PV}.tar.gz -> ${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-${REAL_PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND="
        >=dev-python/convertdate-2.0.3.1
		>=dev-python/jdatetime-1.8.1
		>=dev-python/python-dateutil-2.6.0
		dev-python/pytz
		dev-python/regex
		>=dev-python/ruamel-yaml-0.13.7
		>=dev-python/tzlocal-1.3
		>=dev-python/umalqurra-0.2
        "
RDEPEND="${DEPEND}"

python_install_all() {
        distutils-r1_python_install_all

}
