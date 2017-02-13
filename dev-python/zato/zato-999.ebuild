# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v3

EAPI=5

PYTHON_COMPAT=( python2_7 )

EGIT_REPO_URI="https://github.com/zatosource/zato.git"
EGIT_PROJECT="zato-${PV}"
EGIT_BRANCH="main"
# EGIT_COMMIT="758e4ab92282af1d1a01c0af024d5ccfd3eac02f"
# EGIT_COMMIT="51cf2261224a49d98b3f958d9a4ac422c4211a16"
EGIT_COMMIT="48b6ce95d087f85725c2cd339f5c6f196eee5c63"


inherit distutils-r1 git-2

DESCRIPTION="Open Source ESB, SOA, REST, APIs and Cloud Integrations in Python"
HOMEPAGE="https://zato.io"
LICENSE="LGPLv3"
SLOT="0"

#list depends call: cat version-3.0-gentoo.cfg|awk '{print $NF}'|grep -v "#"

DEP_DEPENDS="
		=dev-python/easydev-0.9.9
		=dev-python/globre-lgpl-999
		dev-python/numpy
		=dev-python/dpath-1.4.0
		sci-libs/scipy
		dev-python/brython
		=dev-python/oslo-utils-2.4.0.200
		=dev-python/oslo-serialization-1.0.0.200
		=dev-python/jsonpatch-1.5.200
		=dev-python/debtcollector-0.5.0.200
"

DEPEND="
        ${DEP_DEPENDS}
		=dev-python/alembic-0.8.7.200
		=dev-python/anyjson-0.3.3.200
		=dev-python/argparse-1.2.1.200
		=dev-python/arrow-0.4.2.200
		=dev-python/behave-1.2.4.200
		=dev-python/boto-2.35.1.200
		=dev-python/bunch-1.0.1
		=dev-vcs/bzr-2.6.0.200
		=dev-python/candv-1.3.1
		=dev-python/cassandra-driver-3.0.0.200
		=dev-python/concurrent-log-handler-0.9.1
		=dev-python/configobj-5.0.5.200
		=dev-python/convertdate-2.0.3.1
		=dev-python/cov-core-1.7.0.200
		=dev-python/coverage-3.7.1.200
		=dev-python/parse-crontab-0.20
		=dev-python/cryptography-1.7.2.200
		=dev-python/dateparser-0.5.1
		=dev-python/dictalchemy-0.1.2.6
		=dev-python/dill-0.2.5.200
		=dev-python/distribute-0.7.3
		=dev-python/django-1.9.7.200
		=dev-python/docformatter-0.8
		=dev-python/elasticsearch-py-0.4.5.200
		=dev-python/elasticutils-0.9.1.200
		=dev-python/enum34-1.0.4.200
		=sci-astronomy/pyephem-3.7.6.200
		=dev-python/flake8-2.1.0.200
		=dev-python/fs-0.4.0.200
		=dev-python/gevent-1.1.2.200
		=dev-python/gevent-inotifyx-0.1.1
		=www-servers/gunicorn-18.0.200
		=dev-python/hiredis-0.2.0.200
		=dev-python/hutools-0.63
		=dev-python/hvac-0.2.16.200
		=dev-python/idna-2.0.200
		=dev-python/imbox-0.6
		=dev-python/importing-1.10.200
		=dev-python/inotifyx-0.2.2.200
		=dev-python/ipaddress-1.0.16.200
		=dev-python/iso8601-0.1.10.200
		=dev-python/jdatetime-1.8.1
		=dev-python/jsonpointer-1.3.200
		=dev-python/jsonschema-2.3.0.200
		=dev-python/kombu-3.0.34.200
		=dev-python/lxml-3.3.5.200
		=dev-python/markdown-2.6.7.200
		=dev-python/mccabe-0.2.1.200
		=dev-python/mock-1.0.1.200
		=dev-python/netaddr-0.7.11.200
		=dev-python/netifaces-0.10.4.200
		=dev-python/ndg-httpsclient-0.4.0.200
		=dev-python/nltk-3.2.1.200
		=dev-python/nose-1.3.3.200
		=dev-python/nosexcover-1.0.7.200
		=dev-python/oauth-1.0.1.200
		=dev-python/openerp-client-lib-1.1.2
		=dev-python/oslo-config-1.2.1.200
		=dev-python/ordereddict-1.1.200
		=dev-python/outbox-0.1.8.200
		=dev-python/paodate-1.2
		=dev-python/parse-1.6.6.200
		=dev-python/parse-type-0.3.4.200
		=dev-python/paste-1.7.5.1.200
		=dev-python/pathtools-0.1.2.200
		=dev-python/pbr-0.7.0.200
		=dev-python/pesto-25
		=dev-python/pg8000-1.10.2
		=dev-python/pika-0.9.12.200
		dev-python/pip
		=dev-python/prettytable-0.7.2.200
		=dev-python/psutil-2.2.1.200
		=dev-python/psycogreen-1.0
		=dev-python/psycopg-2.5.3.200
		=dev-python/pyasn1-0.1.8.200
		=dev-python/pycparser-2.10.200
		=dev-python/pycrypto-2.6.1.200
		=dev-python/pyflakes-0.8.1.200
		=dev-python/pyjwt-1.4.1.200
		dev-python/pymysql
		=dev-python/pygments-1.5.200
		=dev-python/pyopenssl-0.15.1.200
		=dev-python/pyparsing-2.1.10.200
		=dev-python/pyprof2calltree-1.1.0.200
		=dev-python/pyrapidjson-0.4.2
		=dev-python/pysolr-3.2.0.200
		=dev-python/python-butler-0.9.200
		=dev-python/python-dateutil-2.6.0.200
		=dev-python/python-glanceclient-0.12.0.200
		=dev-python/python-ldap-2.4.19.200
		=dev-python/keyczar-0.71.200
		=dev-python/python-keystoneclient-0.6.0.200
		=dev-python/python-novaclient-2.17.0.200
		=dev-python/python-swiftclient-2.0.3.200
		=dev-python/pytz-2016.10.200
		=dev-python/pyyaml-3.11.200
		=dev-python/pyzmq-15.3.0.200
		=dev-python/raven-5.1.1.200
		=dev-python/redis-py-2.10.5.200
		=dev-python/regex-2016.11.21.200
		=dev-python/repoze-lru-0.6.200
		=dev-python/repoze-profile-2.0
		=dev-python/requests-2.7.0.200
		=dev-python/rsa-3.1.2.200
		=dev-python/ruamel-yaml-0.13.7
		=dev-python/sarge-0.1.3
		=dev-python/sec-wall-1.2
		=dev-python/simple-rbac-999
		=dev-python/six-1.10.0.200
		=dev-python/sortedcontainers-0.9.4
		=dev-python/south-1.0.2.200
		=dev-python/springpython-1.3.0.200
		=dev-python/sqlalchemy-0.9.9.200
		=dev-python/stevedore-0.14.1.200
		=dev-python/stompest-2.1.6
		=dev-python/textblob-0.11.1
		=dev-python/texttable-0.8.4.200
		=dev-python/typing-3.5.3.0.200
		=dev-python/tzlocal-1.3.200
		=dev-python/umalqurra-0.2
		=dev-python/untokenize-0.1.1
		=dev-python/urllib3-1.10.4.200
		=dev-python/webhelpers-1.3.200
		=dev-python/warlock-1.1.0.200
		=dev-python/werkzeug-0.9.4.200
		=dev-python/wsaccel-0.6.2.200
		=dev-python/ws4py-0.3.5.200
		=dev-python/wsgiref-0.1.2.200
		=dev-python/zato-redis-paginator-999
"

RDEPEND="
        ${DEPEND}
"

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

