# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} pypy )

inherit distutils-r1

REAL_PV="14.05.2"
DESCRIPTION="PyYAML-based module to produce pretty and readable YAML-serialized data"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${PN}-${REAL_PV}

SLOT="0"
KEYWORDS="amd64 ~arm ~ppc x86"
LICENSE="LGPL-3"
IUSE="test"

RDEPEND=""
DEPEND="
        dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/pyyaml
"
