# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

REAL_PV="1.1.0"
DESCRIPTION="convert python profile data to kcachegrind calltree form"
HOMEPAGE="https://pypi.python.org/pypi/pyprof2calltree/"
SRC_URI="mirror://pypi/p/${PN}/${PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${PN}-${REAL_PV}
IUSE=

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
