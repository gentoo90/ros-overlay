# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Define a common interface between DDS implementations of ROS middleware."
HOMEPAGE="https://index.ros.org/p/rmw_dds_common/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/3.1.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rcpputils
	ros-jazzy/rcutils
	ros-jazzy/rmw
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/rosidl_runtime_c
	ros-jazzy/rosidl_runtime_cpp
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/osrf_testing_tools_cpp
		ros-jazzy/performance_test_fixture
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
