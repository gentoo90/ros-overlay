# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Run and manage programs and plugins"
HOMEPAGE="https://github.com/gazebosim/gz-launch"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-launch/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-libs/gz-plugin:2=
	dev-libs/gz-utils:2=
	dev-libs/tinyxml2:=
	dev-qt/qtcore:5
	dev-qt/qtquickcontrols:5
	dev-qt/qtquickcontrols2:5
	net-libs/gz-msgs:10=
	net-libs/gz-transport:13=
	net-libs/libwebsockets:0=
	sci-electronics/gz-sim:8=
	sci-electronics/gz-tools:2
	sci-libs/gz-common:5=
	sci-libs/gz-gui:8=
	sci-libs/gz-math:7="
DEPEND="${RDEPEND}
	dev-build/gz-cmake:3"
BDEPEND="
	dev-build/gz-cmake:3"