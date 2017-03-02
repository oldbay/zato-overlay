# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 pypy )

inherit distutils-r1

REAL_PV="1.2.7"
DESCRIPTION="Easy to use object-oriented thread pool framework."
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.bz2"
S=${WORKDIR}/${PN}-${REAL_PV}

SLOT="0"
KEYWORDS="amd64 ~arm ~ppc x86"
LICENSE="LGPL-3"
IUSE="test"

RDEPEND=""
DEPEND="
        dev-python/setuptools[${PYTHON_USEDEP}]
"
