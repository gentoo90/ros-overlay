# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Layer encapsulating ROS middleware to allow rosbag2 to be used with or with[...]"
HOMEPAGE="https://index.ros.org/p/rosbag2_transport/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/${PN}/0.26.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/keyboard_handler
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rmw
	ros-jazzy/rosbag2_compression
	ros-jazzy/rosbag2_cpp
	ros-jazzy/rosbag2_interfaces
	ros-jazzy/rosbag2_storage
	ros-jazzy/shared_queues_vendor
	ros-jazzy/yaml_cpp_vendor
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_index_cpp
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/composition_interfaces
		ros-jazzy/rmw_implementation_cmake
		ros-jazzy/rosbag2_compression_zstd
		ros-jazzy/rosbag2_storage_default_plugins
		ros-jazzy/rosbag2_test_common
		ros-jazzy/test_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
