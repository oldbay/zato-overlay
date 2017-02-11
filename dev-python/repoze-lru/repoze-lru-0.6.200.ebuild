# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4,3_5} pypy )

inherit distutils-r1

MY_PN=${PN/-/.}
REAL_PV="0.6"
MY_P=${MY_PN}-${REAL_PV}

DESCRIPTION="A tiny LRU cache implementation and decorator"
HOMEPAGE="http://www.repoze.org"
SRC_URI="mirror://pypi/${P:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="repoze"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"
IUSE=""

S=${WORKDIR}/${MY_P}

python_test() {
	esetup.py test
}
