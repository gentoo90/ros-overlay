# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Filter which fuses angular velocities, accelerations, and \(optionally\) ma[...]"
HOMEPAGE="http://ros.org/wiki/imu_filter_madgwick"
SRC_URI="https://github.com/ros2-gbp/imu_tools-release/archive/release/jazzy/${PN}/2.1.3-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/geometry_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_action
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/visualization_msgs
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
