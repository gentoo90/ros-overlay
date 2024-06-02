# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Parameter server implementation for micro-ROS nodes"
HOMEPAGE="https://index.ros.org/p/rclc_parameter/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rclc-release/archive/release/jazzy/${PN}/6.1.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/rcl
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclc
	ros-jazzy/rcutils
	ros-jazzy/rosidl_runtime_c
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/example_interfaces
		ros-jazzy/osrf_testing_tools_cpp
		ros-jazzy/rclcpp
		ros-jazzy/std_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
