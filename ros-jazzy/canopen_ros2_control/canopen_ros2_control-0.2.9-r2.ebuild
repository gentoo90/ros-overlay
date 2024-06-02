# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ros2_control wrapper for ros2_canopen functionalities"
HOMEPAGE="https://index.ros.org/p/canopen_ros2_control/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/${PN}/0.2.9-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/canopen_402_driver
	ros-jazzy/canopen_core
	ros-jazzy/canopen_proxy_driver
	ros-jazzy/hardware_interface
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rclcpp_lifecycle
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ros2_control_test_assets
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
