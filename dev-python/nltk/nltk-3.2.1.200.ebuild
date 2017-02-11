# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="6"

PYTHON_COMPAT=( python{2_7,3_4} )
PYTHON_REQ_USE="tk?,xml(+)"

inherit distutils-r1

REAL_PV="3.2.1"
DESCRIPTION="Natural Language Toolkit"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
HOMEPAGE="http://nltk.org/"
S=${WORKDIR}/${PN}-${REAL_PV}

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x86-solaris"
IUSE="numpy tk"

RDEPEND="numpy? ( dev-python/numpy[${PYTHON_USEDEP}] )"
DEPEND="${RDEPEND}"