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

DESCRIPTION="Open Source ESB, SOA, REST, APIs and Cloud Integrations in Python - zato-server module"
HOMEPAGE="https://zato.io"
LICENSE="LGPLv3"
SLOT="0"

##PACKAGE_DEPENDS:
#zato-common
#zato-cli (!cyrcle)
#zato-client
#zato-broker
#zato-distlock
#zato-zmq
#zato-bunch (zato-cy)
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
#swiftclient>=2.0.3 (USE: swift)
#stompest>=2.1.6 (USE: stomp)
#imbox>=0.6 (USE: email)
#outbox>=0.1.8 (USE: email)
#!?ver?cassandra>=3.0.0 (USE: cassandra)
#pyfilesystem>=0.4.0 (USE: ftp)
#hvac>=0.2.16 (USE: vault)
#openerp-client-lib>=1.1.2 (USE: odoo)
#parse = 1.6.6
#pesto = 25
#gevent_inotifyx = 0.1.1
#dateparser = 0.5.1
#untokenize = 0.1.1
#markdown = 2.6.7

RDEPEND="
    =dev-python/zato-common-999
    =dev-python/zato-client-999
    =dev-python/zato-broker-999
    =dev-python/zato-distlock-999
    =dev-python/zato-zmq-999
    =dev-python/zato-cy-999
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
    "

DEPEND="${RDEPEND}"

python_compile() {
        mkdir -p ${WORKDIR}/all_src
        mv ${S}/* ${WORKDIR}/all_src/
        cp -r ${WORKDIR}/all_src/code/zato-server/* ${S}

        #version control for zato
        cp ${WORKDIR}/all_src/code/.version.py ${WORKDIR}
        echo ${EGIT_COMMIT} > ${WORKDIR}/all_src/code/release-info/revision.txt
        cp -r ${WORKDIR}/all_src/code/release-info ${WORKDIR}

        distutils-r1_python_compile
}

python_install_all() {
        distutils-r1_python_install_all
}
