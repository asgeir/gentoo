# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# ebuild generated by hackport 0.2.14

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit base haskell-cabal

DESCRIPTION="Lift control operations, like exception catching, through monad transformers"
HOMEPAGE="https://github.com/basvandijk/monad-control/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="<dev-haskell/base-unicode-symbols-0.3
		=dev-haskell/transformers-0.2*
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.9.2
		test? (
			>=dev-haskell/cabal-1.10
			<dev-haskell/test-framework-0.5
			<dev-haskell/test-framework-hunit-0.3
		)
		"

src_configure() {
	cabal_src_configure $(use_enable test tests) $(cabal_flag test)
}
