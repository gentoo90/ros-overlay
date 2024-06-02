# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Message and service definitions used in internal tests for rosbridge packages."
HOMEPAGE="http://ros.org/wiki/rosbridge_library"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/jazzy/${PN}/1.3.2-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/geometry_msgs
	ros-jazzy/rclpy
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/std_msgs
	test? (
		ros-jazzy/actionlib_msgs
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/builtin_interfaces
		ros-jazzy/diagnostic_msgs
		ros-jazzy/example_interfaces
		ros-jazzy/geometry_msgs
		ros-jazzy/nav_msgs
		ros-jazzy/sensor_msgs
		ros-jazzy/std_msgs
		ros-jazzy/std_srvs
		ros-jazzy/stereo_msgs
		ros-jazzy/tf2_msgs
		ros-jazzy/trajectory_msgs
		ros-jazzy/visualization_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
