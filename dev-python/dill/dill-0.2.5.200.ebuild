# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5} )

inherit distutils-r1

REAL_PV="0.2.5"
DESCRIPTION="Serialize all of python (almost)"
HOMEPAGE="http://www.cacr.caltech.edu/~mmckerns/dill.htm"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tgz"
S=${WORKDIR}/${PN}-${REAL_PV}

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~ppc ~amd64-linux ~x86-linux"
IUSE=""

PATCHES=(
	"${FILESDIR}/${PN}-${REAL_PV}-avoid-installation-binaries.patch"
	"${FILESDIR}/${PN}-${REAL_PV}-remove-install_requires.patch"
)
