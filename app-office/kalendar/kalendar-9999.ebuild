# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

KDE_ORG_CATEGORY="pim"
ECM_TEST="forceoptional"
PVCUT=$(ver_cut 1-3)
KFMIN=5.91
QTMIN=5.15.2
inherit ecm kde.org

DESCRIPTION="A calendar application using Akonadi"
HOMEPAGE="https://apps.kde.org/kalendar/"

LICENSE="|| ( GPL-2 GPL-3 ) CC0-1.0"
SLOT="5"
KEYWORDS=""
IUSE=""

# All of the tests involve interacting with akonadi right now (as of 22.04)
RESTRICT="test"

DEPEND="
	>=dev-qt/qtdeclarative-${QTMIN}:5
	>=dev-qt/qtgui-${QTMIN}:5
	>=dev-qt/qtquickcontrols2-${QTMIN}:5
	>=dev-qt/qtsvg-${QTMIN}:5
	>=dev-qt/qtdbus-${QTMIN}:5
	>=kde-apps/akonadi-${KFMIN}:5
	>=kde-apps/akonadi-contacts-${KFMIN}:5
	>=kde-apps/calendarsupport-${KFMIN}:5
	>=kde-apps/eventviews-${KFMIN}:5
	>=kde-frameworks/kcalendarcore-${KFMIN}:5
	>=kde-frameworks/kconfigwidgets-${KFMIN}:5
	>=kde-frameworks/kcoreaddons-${KFMIN}:5
	>=kde-frameworks/kcontacts-${KFMIN}:5
	>=kde-frameworks/kdbusaddons-${KFMIN}:5
	>=kde-frameworks/ki18n-${KFMIN}:5
	>=kde-frameworks/kiconthemes-${KFMIN}:5
	>=kde-frameworks/kitemmodels-${KFMIN}:5
	>=kde-frameworks/kirigami-${KFMIN}:5
	>=kde-frameworks/kwindowsystem-${KFMIN}:5
	>=kde-frameworks/kxmlgui-${KFMIN}:5
"
RDEPEND="${DEPEND}
	>=kde-frameworks/qqc2-desktop-style-${KFMIN}:5
"