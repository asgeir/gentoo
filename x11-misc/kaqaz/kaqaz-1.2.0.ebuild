# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit qmake-utils

DESCRIPTION="Modern note manager"
HOMEPAGE="http://labs.sialan.org/projects/kaqaz"
if [[ ${PV} = *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/sialan-labs/kaqaz.git"
	KEYWORDS=""
else
	SRC_URI="https://github.com/sialan-labs/kaqaz/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="dev-qt/qtdeclarative:5
	dev-qt/qtquick1:5
	dev-qt/qtmultimedia:5
	dev-qt/qtsql:5
	dev-qt/qtsensors:5
	dev-qt/qtpositioning:5
	dev-qt/qtwidgets:5
	dev-qt/qtgui:5
	dev-qt/qtcore:5"
DEPEND="${RDEPEND}"

src_configure() {
	eqmake5
}

src_install() {
	emake install INSTALL_ROOT="${D}"
}
