# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generic cryptography cipher tests"
HOMEPAGE="http://github.com/vincenthz/hs-crypto-cipher"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-haskell/byteable-0.1.1:=[profile?]
	>=dev-haskell/crypto-cipher-types-0.0.5:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/quickcheck-2:=[profile?]
	>=dev-haskell/securemem-0.1.1:=[profile?]
	dev-haskell/test-framework:=[profile?]
	dev-haskell/test-framework-hunit:=[profile?]
	dev-haskell/test-framework-quickcheck2:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
