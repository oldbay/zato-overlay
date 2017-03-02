# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

REAL_PN="ruamel.ordereddict"
REAL_PV="0.4.9"
DESCRIPTION="a version of dict that keeps keys in insertion resp. sorted order"
SRC_URI="mirror://pypi/${PN:0:1}/${REAL_PN}/${REAL_PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${REAL_PN}-${REAL_PV}"

LICENSE="GPL"
SLOT="0"

RDEPEND="${DEPEND}"
DEPEND="dev-python/ruamel-yaml"

python_install_all() {
        distutils-r1_python_install_all
}

