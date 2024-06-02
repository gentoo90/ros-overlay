# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Translates micro-ROS diagnostic messages to vanilla ROS 2 diagnostic messages."
HOMEPAGE="https://index.ros.org/p/micro_ros_diagnostic_bridge/#jazzy"
SRC_URI="https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/jazzy/${PN}/0.3.0-6.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/diagnostic_msgs
	ros-jazzy/micro_ros_diagnostic_msgs
	ros-jazzy/rclcpp
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/diagnostic_msgs
		ros-jazzy/micro_ros_diagnostic_msgs
		ros-jazzy/osrf_testing_tools_cpp
		ros-jazzy/ros_environment
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
