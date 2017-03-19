
EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

REAL_PV="1.6.1"
DESCRIPTION="AMQP Client using the rabbitmq-c library."
HOMEPAGE=""
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${PN}-${REAL_PV}

LICENSE="GPL"
SLOT="0"
IUSE=""

DEPEND=">=dev-python/py-amqp-1.4.6"
RDPEND="${DEPEND}"
