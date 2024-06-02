# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This package take the joint angles of a robot as input, and publishes the 3[...]"
HOMEPAGE="https://index.ros.org/p/robot_state_publisher/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/3.3.3-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/geometry_msgs
	ros-jazzy/kdl_parser
	ros-jazzy/orocos_kdl_vendor
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/urdf
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/launch_ros
		ros-jazzy/launch_testing_ament_cmake
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
