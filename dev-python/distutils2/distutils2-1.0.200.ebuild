# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 pypy )

inherit distutils-r1

REAL_PN="Distutils2"
REAL_PV="1.0a4"
DESCRIPTION="Python Packaging Library"
SRC_URI="mirror://pypi/${REAL_PN:0:1}/${REAL_PN}/${REAL_PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${REAL_PN}-${REAL_PV}

SLOT="0"
KEYWORDS="amd64 ~arm ~ppc x86"
LICENSE="LGPL-3"
IUSE="test"

RDEPEND=""
DEPEND="
        dev-python/setuptools[${PYTHON_USEDEP}]
"
