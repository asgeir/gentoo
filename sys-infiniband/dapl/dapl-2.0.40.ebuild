# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

OFED_VER="3.12"
OFED_RC="1"
OFED_RC_VER="1"
OFED_SUFFIX="1"

inherit openib

DESCRIPTION="OpenIB - Direct Access Provider Library"
KEYWORDS="~amd64 ~x86 ~amd64-linux"
IUSE=""

DEPEND="sys-infiniband/libibverbs:${SLOT}
		sys-infiniband/librdmacm:${SLOT}"
RDEPEND="${DEPEND}
		!sys-infiniband/openib-userspace"

block_other_ofed_versions
