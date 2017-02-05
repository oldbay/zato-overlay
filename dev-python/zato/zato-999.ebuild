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

DESCRIPTION="Open Source ESB, SOA, REST, APIs and Cloud Integrations in Python"
HOMEPAGE="https://zato.io"
LICENSE="LGPLv3"
SLOT="0"

##PACKAGE_DEPENDS:

##all
#----
#easedev - for multisetup

##zato-cli
#---------
#peak
#sarge>=0.1.3

##zato-common
#------------
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
#requests>=2.7.0 (zato patch)
#rsa>=3.1.2
#springpython>=1.3.0RC1
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

#zato-server
#-----------
#gunicorn>=18.0
#psycopg2>=2.5.3
#psycogreen>=1.0
#repoze.lru>=0.6
#repoze.profile>=2.0
#raven>=5.1.1
#textblob>=0.11.1
#dpath
#jsonpointer>=1.3
#(rbac)simple-rbac>=0.1.1
#dill>=0.2.5
#tzlocal>=1.3
#webhelpers>=1.3
#docformatter>=0.8
#oauth>=1.0.1
#regex>=2015.10.05
#sec-wall>=1.2
#sortedcontainers>=0.9.4
#ws4py>=0.3.5
#pika>=0.9.12
#kombu>=2.5.10
#pysolr>=3.2.0
#hutools>=0.63
#scipy
#swiftclient>=2.0.3
#stompest>=2.1.6
#imbox>=0.6
#outbox>=0.1.8
#!?ver?cassandra>=3.0.0
#pyfilesystem>=0.4.0
#hvac>=0.2.16 (USE: vault)
#openerp-client-lib>=1.1.2
#parse = 1.6.6
#pesto = 25
#gevent_inotifyx = 0.1.1
#dateparser = 0.5.1
#untokenize = 0.1.1
#markdown = 2.6.7

#zato-web-admin
#pygments>=1.5
#ordereddicti>=1.1
#(browser)Brython
#pymysql>=0.6.2


DEPEND="
    =dev-python/easydev-0.9.9
	>=dev-python/peak-0.5
    >=dev-python/sarge-0.1.3
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
    =dev-python/requests-2.7.0.200
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
    =dev-python/django-1.9.7
    >=dev-python/pyjwt-zato-1.4.1
    >=dev-python/pathtools-0.1.2
	>=dev-python/pg8000-1.10.2
    >=www-servers/gunicorn-zato-18.0
    >=dev-python/psycopg-2.5.3
    >=dev-python/psycogreen-1.0
    >=dev-python/repoze-lru-0.6
    >=dev-python/repoze-profile-2.0
    >=dev-python/raven-5.1.1
    >=dev-python/textblob-0.11.1
    >=dev-python/dpath-1.4.0
    >=dev-python/jsonpointer-zato-1.3
    dev-python/simple-rbac
    >=dev-python/dill-0.2.5
    >=dev-python/tzlocal-1.3
    >=dev-python/webhelpers-1.3
    >=dev-python/docformatter-0.8
    >=dev-python/oauth-zato-1.0.1
    >=dev-python/regex-2015.10.05
    >=dev-python/sec-wall-1.2
    >=dev-python/sortedcontainers-0.9.4
    >=dev-python/ws4py-zato-0.3.5
    >=dev-python/pika-0.9.12
    >=dev-python/kombu-zato-2.5.10
    >=dev-python/pysolr-3.2.0
    >=dev-python/hutools-0.63
    sci-libs/scipy
    >=dev-python/python-swiftclient-2.0.3
    >=dev-python/stompest-2.1.6
    >=dev-python/imbox-0.6
    >=dev-python/outbox-0.1.8
    >=dev-python/cassandra-driver-2.7.2
    >=dev-python/fs-0.4.0
    >=dev-python/hvac-zato-0.2.16
    >=dev-python/openerp-client-lib-1.1.2
    >=dev-python/parse-1.6.6
    >=dev-python/pesto-25
    >=dev-python/gevent-inotifyx-0.1.1
	>=dev-python/untokenize-0.1.1
	>=dev-python/markdown-2.6.7
    >=dev-python/dateparser-0.5.1
    >=dev-python/pygments-1.5
    >=dev-python/ordereddict-1.1
    dev-python/brython
    >=dev-python/pymysql-0.6.2
    "

RDEPEND="${DEPEND}"

python_prepare_all() {
        #zato-cli
        epatch "${FILESDIR}"/zato-cli/start.py-${PV}.patch
        epatch "${FILESDIR}"/zato-cli/create_server.py-${PV}.patch
        epatch "${FILESDIR}"/zato-cli/create_cluster.py-${PV}.patch

        #zato-common
        epatch "${FILESDIR}"/zato-common/__init__.py-${PV}.patch
        epatch "${FILESDIR}"/zato-common/util.py-${PV}.patch

        distutils-r1_python_prepare_all
}


python_compile() {
        mkdir -p ${WORKDIR}/all_src
        mv ${S}/* ${WORKDIR}/all_src/
        cp -r ${WORKDIR}/all_src/code/{*,.*} ${S}

        #version control for zato
        echo ${EGIT_COMMIT} > ${S}/release-info/revision.txt

		#create setup.py
		cp "${FILESDIR}"/setup.py-${PV} ${S}/setup.py

        distutils-r1_python_compile
}

python_install_all() {
        #zato-common
        dodir /usr/lib64/python2.7/site-packages/zato/common
        insinto /usr/lib64/python2.7/site-packages/zato/common
        doins ${S}/.version.py
        insinto /usr/lib64/python2.7/site-packages/zato/common/release-info
        doins -r ${S}/release-info/*

        #zato-web-admin
        dodir /usr/lib64/python2.7/site-packages/zato/admin
        insinto /usr/lib64/python2.7/site-packages/zato/admin/templates
        doins -r ${S}/zato-web-admin/src/zato/admin/templates/*
        insinto /usr/lib64/python2.7/site-packages/zato/admin/static
        doins -r ${S}/zato-web-admin/src/zato/admin/static/*

        #py symmlinf to python2
        dosym /usr/bin/python2 /usr/bin/py

        distutils-r1_python_install_all
}

