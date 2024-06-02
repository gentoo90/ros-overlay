# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="diagnostic_aggregator"
HOMEPAGE="http://www.ros.org/wiki/diagnostic_aggregator"
SRC_URI="https://github.com/ros2-gbp/diagnostics-release/archive/release/jazzy/${PN}/3.1.2-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclpy
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/launch_testing_ament_cmake
		ros-jazzy/launch_testing_ros
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
	ros-jazzy/diagnostic_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/std_msgs
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
