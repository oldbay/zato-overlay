# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 pypy )

inherit distutils-r1

MY_PN="zc.recipe.egg"
REAL_PV="1.3.2"
MY_P=${MY_PN}-${REAL_PV}

DESCRIPTION="Recipe for installing Python package distributions as eggs"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        >=dev-python/setuptools-3.3[${PYTHON_USEDEP}]
		>=dev-python/zc-buildout-1.5.0
		"
DEPEND="${RDEPEND}"

S="${WORKDIR}"/${MY_P}

