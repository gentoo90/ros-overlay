# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The control toolbox contains modules that are useful across all controllers."
HOMEPAGE="http://ros.org/wiki/control_toolbox"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/3.2.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/control_msgs
	ros-jazzy/filters
	ros-jazzy/generate_parameter_library
	ros-jazzy/geometry_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rcutils
	ros-jazzy/realtime_tools
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/rclcpp_lifecycle
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
