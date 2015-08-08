# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.6.9999

WX_GTK_VER="2.9"

CABAL_FEATURES="lib profile"
inherit haskell-cabal multilib versionator wxwidgets

DESCRIPTION="wxHaskell C++ wrapper"
HOMEPAGE="http://haskell.org/haskellwiki/WxHaskell"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="wxWinLL-3.1"
SLOT="${WX_GTK_VER}/${PV}"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-haskell/wxdirect-0.90.1.0:${WX_GTK_VER}=[profile?]
	x11-libs/wxGTK:${WX_GTK_VER}=[X,gstreamer,opengl]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

src_prepare() {
	sed -e "s@\"wx-config\"@\"${WX_CONFIG}\"@g" \
		-i "${S}/Setup.hs" || die "Could not specify wx-config in Setup.hs"
}

src_configure() {
	local cgcc=()
	for i in ${CXXFLAGS}
	do
		cgcc+=( --gcc-option="${i}" )
	done
	# Trying to specify the LDFLAGS in --ld-option does not work, as ld does
	# not understand ld options prefixed with -Wl,
	# The linker that is used to link the libwxc.so shared library is hard coded
	# in Setup.hs.  So the --with-ld would not change the linker used when
	# linking libwxc.so.  --with-ld="gcc" does not help, as then cabal passes
	# ld options like -x to gcc which then returns a non-zero exit status, then
	# cabal ignores all the --ld-option parameters.
	# So I place all the LDFLAGS in --gcc-option parameters. They are ignored
	# when building .o files.
	local cld=()
	for i in ${LDFLAGS}
	do
		cld+=( --gcc-option="${i}" )
	done
	cabal_src_configure ${cgcc[*]} ${cld[*]} --verbose=3
}

src_install() {
	cabal_src_install
	dolib.so dist/build/lib${PN}.so.${PV}
	dosym lib${PN}.so.${PV} /usr/$(get_libdir)/lib${PN}.so.$(get_version_component_range 1-2)
	dosym lib${PN}.so.${PV} /usr/$(get_libdir)/lib${PN}.so.$(get_major_version)
	dosym lib${PN}.so.${PV} /usr/$(get_libdir)/lib${PN}.so
}
