# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A ROS 2 interface in the style of ROS 1 for reading and writing bag files"
HOMEPAGE="https://index.ros.org/p/classic_bags/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.1.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/rclcpp
	ros-jazzy/rclpy
	ros-jazzy/rosbag2_cpp
	ros-jazzy/rosbag2_py
	ros-jazzy/rosbag2_storage
	ros-jazzy/rosidl_runtime_py
	test? (
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/std_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
