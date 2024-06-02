# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A set of ROS 2 message filters which take in messages and may output those [...]"
HOMEPAGE="https://github.com/intel/ros2_message_filters"
SRC_URI="https://github.com/ros2-gbp/ros2_${PN}-release/archive/release/jazzy/${PN}/4.11.1-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/rclcpp
	ros-jazzy/rclpy
	ros-jazzy/rcutils
	ros-jazzy/std_msgs
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_lint_auto
		ros-jazzy/rclcpp_lifecycle
		ros-jazzy/sensor_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_python
	ros-jazzy/ament_cmake_ros
	ros-jazzy/python_cmake_module
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
