# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A Haskell 98 logically uninhabited data type"
HOMEPAGE="http://github.com/ekmett/void"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="safe"

RDEPEND=">=dev-haskell/hashable-1.1:=[profile?]
		>=dev-haskell/semigroups-0.8.2:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag safe safe)
}
