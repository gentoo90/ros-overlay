# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="KDL binding for tf2"
HOMEPAGE="http://ros.org/wiki/tf2"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/jazzy/${PN}/0.36.4-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/geometry_msgs
	ros-jazzy/orocos_kdl_vendor
	ros-jazzy/tf2
	ros-jazzy/tf2_ros
	ros-jazzy/tf2_ros_py
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/rclcpp
		ros-jazzy/tf2_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
