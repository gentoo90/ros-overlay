# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="PlotJuggler: juggle with data"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/3.9.2-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MPL-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/fastcdr
	ros-jazzy/rclcpp
	app-arch/lz4
	app-arch/zstd
	dev-libs/boost[python]
	dev-libs/protobuf
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
	dev-qt/qtsvg:5
	dev-qt/qttest:5
	dev-qt/qtwebsockets:5
	dev-qt/qtwidgets:5
	dev-qt/qtx11extras:5
	net-libs/cppzmq
	sys-devel/binutils
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
