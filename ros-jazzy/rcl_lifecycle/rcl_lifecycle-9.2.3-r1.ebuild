# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Package containing a C-based lifecycle implementation"
HOMEPAGE="https://index.ros.org/p/rcl_lifecycle/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rcl-release/archive/release/jazzy/${PN}/9.2.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/lifecycle_msgs
	ros-jazzy/rcl
	ros-jazzy/rcutils
	ros-jazzy/rmw
	ros-jazzy/rosidl_runtime_c
	ros-jazzy/tracetools
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/osrf_testing_tools_cpp
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_gen_version_h
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"