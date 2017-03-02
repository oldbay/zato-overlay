# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} pypy )

inherit distutils-r1

REAL_PN="hexagonit.recipe.download"
REAL_PV="1.6"
DESCRIPTION="zc.buildout recipe for downloading and extracting packages"
SRC_URI="https://github.com/hexagonit/${REAL_PN}/archive/${REAL_PV}.tar.gz -> ${REAL_PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${REAL_PN}-${REAL_PV}

SLOT="0"
KEYWORDS="amd64 ~arm ~ppc x86"
LICENSE="LGPL-3"
IUSE="test"

RDEPEND=""
DEPEND="
        dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/zc-buildout-1.4.0
"
