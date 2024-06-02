# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="C++ ROSBag2 client library"
HOMEPAGE="https://index.ros.org/p/rosbag2_cpp/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/${PN}/0.26.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rcpputils
	ros-jazzy/rcutils
	ros-jazzy/rmw
	ros-jazzy/rmw_implementation
	ros-jazzy/rosbag2_storage
	ros-jazzy/rosidl_runtime_c
	ros-jazzy/rosidl_runtime_cpp
	ros-jazzy/rosidl_typesupport_cpp
	ros-jazzy/rosidl_typesupport_introspection_cpp
	ros-jazzy/shared_queues_vendor
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/rosbag2_storage_default_plugins
		ros-jazzy/rosbag2_test_common
		ros-jazzy/rosbag2_test_msgdefs
		ros-jazzy/test_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
