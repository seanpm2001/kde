# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

KDE_LINGUAS="cs de es fr ja lt nl pl pt_BR ro ru"
inherit kde4-base

DESCRIPTION="KDESvn is a frontend to the subversion vcs."
HOMEPAGE="http://www.alwins-world.de/wiki/programs/kdesvn"
ESVN_REPO_URI="http://www.alwins-world.de/repos/kdesvn/trunk/"
ESVN_PROJECT="kdesvn"

LICENSE="GPL-2"
KEYWORDS=""
SLOT="4"
IUSE="debug +handbook"

DEPEND="
	>=dev-db/sqlite-3
	>=dev-util/subversion-1.4
	sys-devel/gettext
"
RDEPEND="${DEPEND}
	!dev-util/kdesvn:1.2
	!dev-util/qsvn
	!<kde-base/kdesdk-kioslaves-4.3.5[-kdeprefix]
	!>=kde-base/kdesdk-kioslaves-4.3.5[-kdeprefix,subversion]
"

src_configure() {
	append-cppflags -DQT_THREAD_SUPPORT
	mycmakeargs=(
		-DDAILY_BUILD=ON
	)

	kde4-base_src_configure
}

pkg_postinst() {
	if ! has_version 'kde-base/kompare'; then
		echo
		elog "For nice graphical diffs, install kde-base/kompare."
		echo
	fi

	kde4-base_pkg_postinst
}
