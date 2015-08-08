# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999
#hackport: flags: -old-crypto-api

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Conduit interface for cryptographic operations (from crypto-api)"
HOMEPAGE="https://github.com/prowdsponsor/crypto-conduit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+conduit11"

RDEPEND=">=dev-haskell/cereal-0.3:=[profile?] <dev-haskell/cereal-0.5:=[profile?]
	>=dev-haskell/conduit-1.0:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
	>=dev-haskell/crypto-api-0.9:=[profile?] <dev-haskell/crypto-api-0.14:=[profile?]
	dev-haskell/resourcet:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	conduit11? ( >=dev-haskell/conduit-extra-1.1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/crypto-api-0.13
		>=dev-haskell/cryptocipher-0.4
		>=dev-haskell/cryptohash-cryptoapi-0.1
		>=dev-haskell/hspec-1.3
		>=dev-haskell/skein-0.1 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag conduit11 conduit11) \
		--flag=-old-crypto-api
}
