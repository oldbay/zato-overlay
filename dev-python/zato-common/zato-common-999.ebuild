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

DESCRIPTION="Open Source ESB, SOA, REST, APIs and Cloud Integrations in Python - zato-common module"
HOMEPAGE="https://zato.io"
LICENSE="LGPLv3"
SLOT="0"

##PACKAGE_DEPENDS:
#alembic>=0.6.5
#anyjson>=0.3.3
#arrow>=0.4.2
#boto>=2.35.1
#bzr>=2.6
#bunch>=1.0.1
#candv>=1.1.1
#configobj>=5.0.5
#crontab>=0.20
#dictalchemy>=0.1.2.6
#distribute>=0.7.3
#gevent>=1.1.2
#globre-lgpl -e git://github.com/dsuch/globre-lgpl.git#egg=globre
#ConcurrentLogHandler>=0.9.1
#lxml>=3.3.5
#mock>=1.0.1
#nose>=1.3.3
#paodate>=1.2
#Paste>=1.7.5.1
#pip>=6.0.8
#psutil>=2.1.0
#pycrypto>=2.6
#pyOpenSSL>=0.14
#pyparsing>=2.0.1
#python-dateutil>=2.2
#!?ver?pytz==2016.4
#pyzmq>=14.6.0
#redis>=2.10.5
#hiredis>=0.2.0
#zato-redis-paginator>=1.0
#requests>=2.6.0
#rsa>=3.1.2
#!?package bad?springpython>=1.3.0RC1
#SQLAlchemy>=0.9.9
#texttable>=0.8.1
#numpy
#!?name?validate -> dev-python/configobj
#pyyaml>=3.11
#python-butler>=0.9
#netifaces >=0.10.4
#pyrapidjson >=0.4
#six >=1.6.1
#elasticutils >=0.9.1
#django >=1.9.7
#pyjwt >=1.4.1
#pathtools >=0.1.2
#pg8000 >=1.10.2

RDEPEND="
    >=dev-python/alembic-0.6.5
    >=dev-python/anyjson-zato-0.3.3
    >=dev-python/arrow-0.4.2
    >=dev-python/boto-2.35.1
    >=dev-vcs/bzr-2.6
    >=dev-python/bunch-1.0.1
    >=dev-python/candv-1.1.1
    >=dev-python/configobj-5.0.5
    >=dev-python/parse-crontab-0.20
    >=dev-python/dictalchemy-0.1.2.6
    >=dev-python/distribute-0.7.3
    >=dev-python/gevent-1.1.2
    dev-python/globre-lgpl
    >=dev-python/concurrent-log-handler-0.9.1
    >=dev-python/lxml-3.3.5
    >=dev-python/mock-1.0.1
    >=dev-python/nose-1.3.3
    >=dev-python/paodate-1.2
    >=dev-python/paste-1.7.5.1
    >=dev-python/pip-6.0.8
    >=dev-python/psutil-2.1.0
    >=dev-python/pycrypto-2.6
    >=dev-python/pyopenssl-0.14
    >=dev-python/pyparsing-2.0.1
    >=dev-python/python-dateutil-2.2
    >=dev-python/pytz-2016.3
    >=dev-python/pyzmq-14.6.0
    >=dev-python/redis-py-zato-2.10.5
	>=dev-python/hiredis-0.2.0
	>=dev-python/zato-redis-paginator-1.0
    >=dev-python/requests-2.6.0
    >=dev-python/rsa-3.1.2
    >=dev-python/springpython-zato-1.3.0
    =dev-python/sqlalchemy-0.9.9
    >=dev-python/texttable-0.8.1
    dev-python/numpy
    dev-python/configobj
    >=dev-python/pyyaml-3.11
    >=dev-python/python-butler-zato-0.9
    >=dev-python/netifaces-0.10.4
    >=dev-python/pyrapidjson-0.4
    >=dev-python/six-1.6.1
    >=dev-python/elasticutils-zato-0.9.1
    >=dev-python/django-1.9.7
    >=dev-python/pyjwt-zato-1.4.1
    >=dev-python/pathtools-0.1.2
	>=dev-python/pg8000-1.10.2
    "
DEPEND="${RDEPEND}"

python_prepare_all() {
	epatch "${FILESDIR}"/__init__.py-${PV}.patch
	epatch "${FILESDIR}"/util.py-${PV}.patch

	distutils-r1_python_prepare_all
}

python_compile() {
        mkdir -p ${WORKDIR}/all_src
        mv ${S}/* ${WORKDIR}/all_src/
        cp -r ${WORKDIR}/all_src/code/zato-common/* ${S}

        #version control for zato
        cp ${WORKDIR}/all_src/code/.version.py ${WORKDIR}
        echo ${EGIT_COMMIT} > ${WORKDIR}/all_src/code/release-info/revision.txt
        cp -r ${WORKDIR}/all_src/code/release-info ${WORKDIR}
		
		distutils-r1_python_compile
}

python_install_all() {
        dodir /usr/lib64/python2.7/site-packages/zato/common
        insinto /usr/lib64/python2.7/site-packages/zato/common
        doins ${WORKDIR}/all_src/code/.version.py
        insinto /usr/lib64/python2.7/site-packages/zato/common/release-info
        doins -r ${WORKDIR}/all_src/code/release-info/*
        dosym /usr/bin/python2 /usr/bin/py
        
		distutils-r1_python_install_all
}
