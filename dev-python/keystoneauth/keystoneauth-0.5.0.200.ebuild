# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 python3_4 python3_5 )

inherit distutils-r1

REAL_PV="0.5.0"
DESCRIPTION="This package contains tools for authenticating to an OpenStack-based cloud."
HOMEPAGE="https://github.com/openstack/keystoneauth"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-${REAL_PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"
IUSE=""

CDEPEND="dev-python/pbr[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	${CDEPEND}"
RDEPEND="${CDEPEND}
	dev-python/iso8601[${PYTHON_USEDEP}]
	dev-python/positional[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/stevedore[${PYTHON_USEDEP}]"
