# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A small, efficient and portable regex library for Perl 5 compatible regular expressions"
HOMEPAGE="https://github.com/Daniel-Diaz/pcre-light"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
	dev-libs/libpcre
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2.0
"
