# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
GITHUB_USER=dsc
PYTHON_COMPAT=( python{2_7,3_4} )

inherit distutils-r1

REAL_PV="1.0.1"
DESCRIPTION="Python dictionary with attribute-style access"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S=${WORKDIR}/${PN}-${REAL_PV}

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

COMMON_DEPEND="
    ${PYTHON_DEPS}
"
DEPEND="
    ${COMMON_DEPEND}
    dev-python/nose[${PYTHON_USEDEP}]
    dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
    ${COMMON_DEPEND}
"
