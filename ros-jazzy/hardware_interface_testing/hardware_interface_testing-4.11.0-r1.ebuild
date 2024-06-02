# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ros2_control hardware interface testing"
HOMEPAGE="https://index.ros.org/p/hardware_interface_testing/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/${PN}/4.11.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/control_msgs
	ros-jazzy/hardware_interface
	ros-jazzy/lifecycle_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/ros2_control_test_assets
	test? (
		ros-jazzy/ament_cmake_gmock
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
