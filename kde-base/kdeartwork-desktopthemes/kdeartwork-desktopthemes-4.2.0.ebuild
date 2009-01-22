# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

KMMODULE="desktopthemes"
KMNAME="kdeartwork"
inherit kde4-meta

DESCRIPTION="Additional themes from kde"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="${DEPEND}
		!kdeprefix? ( !<kde-base/kdeplasma-addons-${PV}:${SLOT}[kdeprefix=] )"
