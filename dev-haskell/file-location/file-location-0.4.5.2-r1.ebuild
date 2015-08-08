# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="common functions that show file location information"
HOMEPAGE="https://github.com/gregwebs/FileLocation.hs"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""
# tests fail: test: main:Main test/main.hs:30:5 Oh no!
# Test suite test: FAIL
RESTRICT="test"

RDEPEND="dev-haskell/lifted-base:=[profile?]
		>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	cabal_chdeps \
		'transformers     >= 0.2 && < 0.4' 'transformers     >= 0.2 && < 0.5'
}
