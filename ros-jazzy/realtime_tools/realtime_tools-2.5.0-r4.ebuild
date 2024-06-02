# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Contains a set of tools that can be used from a hard\
    realtime thread, [...]"
HOMEPAGE="http://ros.org/wiki/realtime_tools"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.5.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="3-Clause-BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_action
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/test_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
