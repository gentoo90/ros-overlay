# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Generate the C++ interfaces for eProsima FastRTPS."
HOMEPAGE="https://index.ros.org/p/rosidl_typesupport_fastrtps_cpp/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/jazzy/${PN}/3.6.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/fastcdr
	ros-jazzy/rmw
	ros-jazzy/rosidl_cli
	ros-jazzy/rosidl_pycommon
	ros-jazzy/rosidl_runtime_c
	ros-jazzy/rosidl_runtime_cpp
	ros-jazzy/rosidl_typesupport_interface
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/osrf_testing_tools_cpp
		ros-jazzy/performance_test_fixture
		ros-jazzy/rcutils
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_python
	ros-jazzy/ament_cmake_ros
	ros-jazzy/fastrtps_cmake_module
	ros-jazzy/rosidl_generator_c
	ros-jazzy/rosidl_generator_cpp
	dev-lang/python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
