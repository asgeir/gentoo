# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

JAVA_PKG_IUSE="doc source test"

inherit java-pkg-2 java-ant-2

MY_PN="netty"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Async event-driven framework for rapid development of high performance network applications"
HOMEPAGE="http://netty.io/"
SRC_URI="https://github.com/${MY_PN}/${MY_PN}/archive/${MY_P}.Final.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

CDEPEND="dev-java/${MY_PN}-buffer:0
	dev-java/${MY_PN}-common:0
	dev-java/${MY_PN}-transport:0
	dev-java/jboss-marshalling:0
	dev-java/jzlib:1.1.3
	dev-libs/protobuf[java]"

RDEPEND=">=virtual/jre-1.6
	${CDEPEND}"

DEPEND=">=virtual/jdk-1.6
	${CDEPEND}
	test? (
		dev-java/ant-core:0
		dev-java/easymock:3.2
		dev-java/hamcrest-library:1.3
		dev-java/junit:4
	)"

S="${WORKDIR}/${MY_PN}-${MY_P}.Final/${PN/${MY_PN}-}"

EANT_BUILD_TARGET="package"
EANT_GENTOO_CLASSPATH="${MY_PN}-buffer,${MY_PN}-common,jboss-marshalling,${MY_PN}-transport,jzlib-1.1.3,protobuf"
JAVA_ANT_REWRITE_CLASSPATH="true"

EANT_TEST_GENTOO_CLASSPATH="${EANT_GENTOO_CLASSPATH},ant-core,easymock-3.2,hamcrest-library-1.3,junit-4"
EANT_TEST_EXTRA_ARGS+=" -Djunit.present=true"

java_prepare() {
	cp "${FILESDIR}"/${P}-build.xml build.xml || die

	# Remove the odd memory restriction in the generated build files.
	sed -i 's/memoryMaximumSize="256m"//' build.xml || die
}

#    [junit] Testcase: testZLIB_OR_NONE2 took 0.008 sec
#    [junit] 	Caused an ERROR
#    [junit] null
#    [junit] java.lang.InstantiationException
#    [junit] 	at java.lang.reflect.Constructor.newInstance(Constructor.java:408)
RESTRICT="test"

src_test() {
	ANT_TASKS="ant-junit" java-pkg-2_src_test
}

src_install() {
	java-pkg_newjar target/${MY_PN}-*.jar ${PN}.jar

	use doc && java-pkg_dojavadoc target/site/apidocs
	use source && java-pkg_dosrc src/main/java
}
