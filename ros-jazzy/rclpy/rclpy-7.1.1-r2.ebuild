# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Package containing the Python client."
HOMEPAGE="https://index.ros.org/p/rclpy/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/7.1.1-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/action_msgs
	ros-jazzy/ament_index_python
	ros-jazzy/builtin_interfaces
	ros-jazzy/lifecycle_msgs
	ros-jazzy/rcl
	ros-jazzy/rcl_action
	ros-jazzy/rcl_interfaces
	ros-jazzy/rcl_lifecycle
	ros-jazzy/rcl_logging_interface
	ros-jazzy/rcl_yaml_param_parser
	ros-jazzy/rmw
	ros-jazzy/rmw_implementation
	ros-jazzy/rosgraph_msgs
	ros-jazzy/rosidl_runtime_c
	ros-jazzy/rpyutils
	ros-jazzy/unique_identifier_msgs
	dev-python/pyyaml
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/rosidl_generator_py
		ros-jazzy/test_msgs
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/pybind11_vendor
	ros-jazzy/python_cmake_module
	ros-jazzy/rcpputils
	ros-jazzy/rcutils
	ros-jazzy/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
