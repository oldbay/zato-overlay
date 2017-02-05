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

DESCRIPTION="Open Source ESB, SOA, REST, APIs and Cloud Integrations in Python - zato-broker module"
HOMEPAGE="https://zato.io"
LICENSE="LGPLv3"
SLOT="0"

##PACKAGE_DEPENDS:
#zato-common

RDEPEND="
    =dev-python/zato-common-999
    "

DEPEND="${RDEPEND}"

python_compile() {
        mkdir -p ${WORKDIR}/all_src
        mv ${S}/* ${WORKDIR}/all_src/
        cp -r ${WORKDIR}/all_src/code/zato-broker/* ${S}

        #version control for zato
        cp ${WORKDIR}/all_src/code/.version.py ${WORKDIR}
        echo ${EGIT_COMMIT} > ${WORKDIR}/all_src/code/release-info/revision.txt
        cp -r ${WORKDIR}/all_src/code/release-info ${WORKDIR}

        distutils-r1_python_compile
}

python_install_all() {
        distutils-r1_python_install_all
}
