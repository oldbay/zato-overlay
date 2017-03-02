# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} pypy )

inherit distutils-r1

REAL_PN="iw.recipe.cmd"
REAL_PV="0.3"
DESCRIPTION="ZC Buildout recipe to execute a commande line"
SRC_URI="mirror://pypi/${PN:0:1}/${REAL_PN}/${REAL_PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${REAL_PN}-${REAL_PV}

SLOT="0"
KEYWORDS="amd64 ~arm ~ppc x86"
LICENSE="LGPL-3"
IUSE="test"

RDEPEND=""
DEPEND="
        dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/zc-buildout
"
