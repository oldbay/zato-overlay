# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 pypy )

inherit distutils-r1

REAL_PV="1.0.1"
DESCRIPTION="ZATO-3 patch. Python OAuth module"
HOMEPAGE="https://pypi.python.org/pypi/oauth"
SRC_URI="mirror://pypi/${PN:0:1}/${REAL_PN}/${PN}-${REAL_PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
S="${WORKDIR}/${PN}-${REAL_PV}"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="!dev-python/oauth"

python_prepare_all() {
	epatch "${FILESDIR}"/oauth.py-${REAL_PV}.diff

	distutils-r1_python_prepare_all
}

