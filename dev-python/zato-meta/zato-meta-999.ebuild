# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Zato metapackage"
HOMEPAGE="https://zato.io"
LICENSE="metapackage"
SLOT="0"

DEPEND=""
RDEPEND="
    =dev-python/zato-agent-999
	=dev-python/zato-broker-999
	=dev-python/zato-cli-999
	=dev-python/zato-client-999
	=dev-python/zato-common-999
	=dev-python/zato-cy-999
	=dev-python/zato-distlock-999
	=dev-python/zato-scheduler-999
	=dev-python/zato-server-999
	=dev-python/zato-web-admin-999
	=dev-python/zato-zmq-999
    "

