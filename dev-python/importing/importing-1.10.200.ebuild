# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 pypy )

inherit distutils-r1

MY_PN="Importing"
REAL_PV="1.10"

DESCRIPTION="Import objects dynamically, lazily, "weakly", and more"
HOMEPAGE=" http://peak.telecommunity.com/DevCenter/Importing"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_PN}-${REAL_PV}.zip -> ${P}.zip"

KEYWORDS="amd64 x86"
IUSE=""
LICENSE="ZPL"
SLOT="0"

RDEPEND="!dev-python/peak"
DEPEND="app-arch/unzip
	dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}"/${MY_PN}-${REAL_PV}
