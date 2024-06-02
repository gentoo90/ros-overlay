# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The ROS client library in C++."
HOMEPAGE="https://index.ros.org/p/rclcpp/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/28.1.2-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/builtin_interfaces
	ros-jazzy/libstatistics_collector
	ros-jazzy/rcl
	ros-jazzy/rcl_interfaces
	ros-jazzy/rcl_logging_interface
	ros-jazzy/rcl_yaml_param_parser
	ros-jazzy/rcpputils
	ros-jazzy/rcutils
	ros-jazzy/rmw
	ros-jazzy/rosgraph_msgs
	ros-jazzy/rosidl_dynamic_typesupport
	ros-jazzy/rosidl_runtime_c
	ros-jazzy/rosidl_runtime_cpp
	ros-jazzy/rosidl_typesupport_c
	ros-jazzy/rosidl_typesupport_cpp
	ros-jazzy/statistics_msgs
	ros-jazzy/tracetools
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_cmake_google_benchmark
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/mimick_vendor
		ros-jazzy/performance_test_fixture
		ros-jazzy/rmw
		ros-jazzy/rmw_implementation_cmake
		ros-jazzy/rosidl_default_generators
		ros-jazzy/test_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_gen_version_h
	ros-jazzy/ament_cmake_ros
	dev-lang/python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
