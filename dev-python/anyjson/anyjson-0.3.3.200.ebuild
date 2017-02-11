# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4,3_5} pypy )

inherit distutils-r1

REAL_PV="0.3.3"
DESCRIPTION="ZATO-3 patch. Wraps the best available JSON implementation available in a common interface."
HOMEPAGE="https://bitbucket.org/runeh/anyjson"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${PN}-${REAL_PV}.tar.gz"
S="${WORKDIR}/${PN}-${REAL_PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"
IUSE="test"

# please keep all supported implementations in 'test?'
# to make sure the package is used in the widest way
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/simplejson[$(python_gen_usedep 'python2*' python3_3 'pypy*')]
	)"
RDEPEND="!dev-python/anyjson"

python_prepare_all() {
	epatch "${FILESDIR}"/__init__.py-${REAL_PV}.diff

	distutils-r1_python_prepare_all
}

python_test() {
	cp -r -l tests "${BUILD_DIR}" || die
	if [[ ${EPYTHON} == python3* ]]; then
		2to3 -w --no-diffs "${BUILD_DIR}"/tests || die
	fi

	nosetests -w "${BUILD_DIR}"/tests || die "Tests fail with ${EPYTHON}"
}
