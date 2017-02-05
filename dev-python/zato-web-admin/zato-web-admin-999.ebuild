# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v3

EAPI=5

PYTHON_COMPAT=( python2_7 )

EGIT_REPO_URI="https://github.com/zatosource/zato.git"
EGIT_PROJECT="zato-${PV}"
EGIT_BRANCH="main"
# EGIT_COMMIT="758e4ab92282af1d1a01c0af024d5ccfd3eac02f"
EGIT_COMMIT="51cf2261224a49d98b3f958d9a4ac422c4211a16"

inherit distutils-r1 git-2

DESCRIPTION="Open Source ESB, SOA, REST, APIs and Cloud Integrations in Python - zato-web-admin module"
HOMEPAGE="https://zato.io"
LICENSE="LGPLv3"
SLOT="0"

##PACKAGE_DEPENDS:
#zato-common
#pygments>=1.5
#ordereddicti>=1.1
#(browser)Brython
#pymysql>=0.6.2 (USE:mysql)

# IUSE=""

RDEPEND="
    =dev-python/zato-common-999
    >=dev-python/pygments-1.5
    >=dev-python/ordereddict-1.1
    dev-python/brython
    >=dev-python/pymysql-0.6.2
    "

DEPEND="${RDEPEND}"

python_compile() {
        mkdir -p ${WORKDIR}/all_src
        mv ${S}/* ${WORKDIR}/all_src/
        cp -r ${WORKDIR}/all_src/code/zato-web-admin/* ${S}

        #version control for zato
        cp ${WORKDIR}/all_src/code/.version.py ${WORKDIR}
        echo ${EGIT_COMMIT} > ${WORKDIR}/all_src/code/release-info/revision.txt
        cp -r ${WORKDIR}/all_src/code/release-info ${WORKDIR}
		
		distutils-r1_python_compile
}

python_install_all() {
        dodir /usr/lib64/python2.7/site-packages/zato/admin
        insinto /usr/lib64/python2.7/site-packages/zato/admin/templates
        doins -r ${S}/src/zato/admin/templates/*
        insinto /usr/lib64/python2.7/site-packages/zato/admin/static
        doins -r ${S}/src/zato/admin/static/*

        distutils-r1_python_install_all
}
