# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} )

inherit distutils-r1

DESCRIPTION="Python client for Redis key-value store"
HOMEPAGE="https://github.com/andymccurdy/redis-py"
SRC_URI="https://bitbucket.org/ruamel/yaml/get/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL"
SLOT="0"

RDEPEND="${DEPEND}"
DEPEND=">=dev-python/typing-3.5.3.0"

S="${WORKDIR}/${PN}-00c7352d22d0"

python_prepare_all() {
	epatch "${FILESDIR}"/setup.py-${PV}.patch

	distutils-r1_python_prepare_all
}

python_install_all() {
        distutils-r1_python_install_all
}

