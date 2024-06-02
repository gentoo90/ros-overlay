# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="An almost dependency-less library for converting between color spaces"
HOMEPAGE="https://index.ros.org/p/color_util/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.0.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/std_msgs
	test? (
		ros-jazzy/ament_cmake_gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
