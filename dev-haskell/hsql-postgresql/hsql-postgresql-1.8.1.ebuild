# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# ebuild generated by hackport 0.2.13

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A Haskell Interface to PostgreSQL via the PQ library"
HOMEPAGE="http://hackage.haskell.org/package/hsql-postgresql"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND="=dev-haskell/hsql-1.8*[profile?]
		>=dev-lang/ghc-6.10.1
		>=dev-db/postgresql-7"
DEPEND="${RDEPEND}
		dev-haskell/cabal"
