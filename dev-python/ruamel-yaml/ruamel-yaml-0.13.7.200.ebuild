# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

REAL_PN="ruamel.yaml"
REAL_PV="0.13.7"
DESCRIPTION="Python client for Redis key-value store"
SRC_URI="mirror://pypi/${PN:0:1}/${REAL_PN}/${REAL_PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${REAL_PN}-${REAL_PV}"

LICENSE="GPL"
SLOT="0"

RDEPEND="${DEPEND}"
DEPEND=">=dev-python/typing-3.5.3.0"

python_prepare_all() {
	epatch "${FILESDIR}"/setup.py-${REAL_PV}.patch

	distutils-r1_python_prepare_all
}

python_install_all() {
        distutils-r1_python_install_all
}

