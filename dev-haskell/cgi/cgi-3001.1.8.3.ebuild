# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A library for writing CGI programs"
HOMEPAGE="http://andersk.mit.edu/haskell/cgi/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="alpha amd64 ppc sparc x86"
IUSE=""

RDEPEND="dev-haskell/extensible-exceptions:=[profile?]
		dev-haskell/monadcatchio-mtl:=[profile?]
		>=dev-haskell/mtl-1.0:=[profile?]
		>=dev-haskell/network-2.0:=[profile?]
		>=dev-haskell/parsec-2.0:=[profile?]
		>=dev-haskell/xhtml-3000.0.0:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"
