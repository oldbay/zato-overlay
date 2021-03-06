# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# Note: pypy3 not supported
# Note: py3.5 preliminary support
# http://www.gevent.org/whatsnew_1_1.html#broader-platform-support
PYTHON_COMPAT=( python2_7 python3_{4,5} pypy )
PYTHON_REQ_USE="ssl(+),threads(+)"

inherit distutils-r1 flag-o-matic

REAL_PV="1.1.2"
MY_PV=${REAL_PV/_beta/b}
MY_P=${PN}-${MY_PV}

DESCRIPTION="Coroutine-based network library"
HOMEPAGE="http://gevent.org/ https://pypi.python.org/pypi/gevent/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~mips ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux"
IUSE="doc examples"

RDEPEND="
	dev-libs/libev
	>=net-dns/c-ares-1.10
	>=dev-python/greenlet-0.4.9
	virtual/python-greenlet[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )"

# Tests take long and fail terribly a few times.
# It also seems that they require network access.
RESTRICT="test"

S=${WORKDIR}/${MY_P}

python_prepare_all() {
	export LIBEV_EMBED="false"
	export CARES_EMBED="false"
	export EMBED="false"

	distutils-r1_python_prepare_all
}

python_configure_all() {
	append-flags -fno-strict-aliasing
}

python_compile_all() {
	use doc && emake -C doc html
}

python_test() {
	cd greentest || die

	GEVENT_RESOLVER=thread \
		"${PYTHON}" testrunner.py --config ../known_failures.py || die
	GEVENT_RESOLVER=ares GEVENTARES_SERVERS=8.8.8.8 \
		"${PYTHON}" testrunner.py --config ../known_failures.py \
		--ignore tests_that_dont_use_resolver.txt || die
	GEVENT_FILE=thread \
		"${PYTHON}" testrunner.py --config ../known_failures.py $(grep -l subprocess test_*.py) || die
}

python_install_all() {
	local DOCS=( AUTHORS changelog.rst README.rst )
	use doc && local HTML_DOCS=( doc/_build/html/. )
	use examples && dodoc -r examples

	distutils-r1_python_install_all
}
