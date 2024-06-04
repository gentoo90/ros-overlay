# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_BUILD_TYPE=RelWithDebInfo
inherit cmake

DESCRIPTION="Garden, Gazebo's 7th named release"
HOMEPAGE="https://github.com/gazebosim/gz-harmonic"
SRC_URI="https://github.com/gazebosim/gz-harmonic/archive/refs/tags/${PN}_${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-libs/gz-plugin:2=
	dev-libs/gz-utils:2=
	dev-libs/sdformat:14=
	media-gfx/gz-rendering:8=
	net-libs/gz-msgs:10=
	net-libs/gz-transport:13=
	sci-electronics/gz-launch:7=
	sci-electronics/gz-sim:8=
	sci-electronics/gz-tools:2
	sci-libs/gz-common:5=
	sci-libs/gz-fuel-tools:9=
	sci-libs/gz-gui:8=
	sci-libs/gz-math:7=
	sci-libs/gz-physics:7=
	sci-libs/gz-sensors:8="
DEPEND="${RDEPEND}
	dev-build/gz-cmake:3"
BDEPEND="
	dev-build/gz-cmake:3"

S="${WORKDIR}/${PN}-${PN}_${PV}"
