# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS 2 Domain Bridge"
HOMEPAGE="https://index.ros.org/p/domain_bridge/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.5.0-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rcutils
	ros-jazzy/rosbag2_cpp
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/rosidl_typesupport_cpp
	ros-jazzy/zstd_vendor
	dev-cpp/yaml-cpp
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/example_interfaces
		ros-jazzy/launch
		ros-jazzy/launch_testing
		ros-jazzy/launch_testing_ament_cmake
		ros-jazzy/rmw_connextdds
		ros-jazzy/rmw_cyclonedds_cpp
		ros-jazzy/rmw_fastrtps_cpp
		ros-jazzy/rmw_implementation_cmake
		ros-jazzy/rosgraph_msgs
		ros-jazzy/test_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
