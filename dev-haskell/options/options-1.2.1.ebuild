# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit base haskell-cabal

DESCRIPTION="A powerful and easy-to-use command-line option parser"
HOMEPAGE="https://john-millikin.com/software/haskell-options/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RESTRICT=test # needs old chell

RDEPEND=">=dev-haskell/monads-tf-0.1:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/chell-0.3.1 <dev-haskell/chell-0.5
		>=dev-haskell/chell-quickcheck-0.2 <dev-haskell/chell-quickcheck-0.3 )
"

PATCHES=("${FILESDIR}/${PN}-1.2.1-ghc-7.10.patch")

src_prepare() {
	base_src_prepare
	cabal_chdeps \
		'chell >= 0.3.1 && < 0.4' 'chell >= 0.3.1 && < 0.5'
}
