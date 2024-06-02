# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides service calls for getting ros meta-information, like list of\
    [...]"
HOMEPAGE="http://ros.org/wiki/rosapi"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/jazzy/${PN}/1.3.2-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclpy
	ros-jazzy/ros2node
	ros-jazzy/ros2param
	ros-jazzy/ros2pkg
	ros-jazzy/ros2service
	ros-jazzy/ros2topic
	ros-jazzy/rosapi_msgs
	ros-jazzy/rosbridge_library
	test? (
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/geometry_msgs
		ros-jazzy/rmw_dds_common
		ros-jazzy/sensor_msgs
		ros-jazzy/shape_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
