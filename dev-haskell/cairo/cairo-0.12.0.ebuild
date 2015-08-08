# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# ebuild generated by hackport 0.2.13

EAPI="3"

#nocabaldep is for the fancy cabal-detection feature at build-time
CABAL_FEATURES="lib profile haddock hscolour nocabaldep"
inherit haskell-cabal

DESCRIPTION="Haskell bindings to the x11-libs/cairo library"
HOMEPAGE="http://www.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+svg"

RDEPEND="dev-haskell/mtl
		>=dev-lang/ghc-6.10.1
		x11-libs/cairo[svg?]"
DEPEND="${RDEPEND}
		dev-haskell/gtk2hs-buildtools:0"

src_configure() {
	# x11-libs/cairo seems to build pdf and ps by default
	cabal_src_configure \
		--flags=cairo_pdf \
		--flags=cairo_ps \
		$(cabal_flag svg cairo_svg)
}
