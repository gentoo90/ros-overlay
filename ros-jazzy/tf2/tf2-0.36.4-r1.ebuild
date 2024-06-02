# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="tf2 is the second generation of the transform library, which lets\
    the [...]"
HOMEPAGE="http://www.ros.org/wiki/tf2"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/jazzy/${PN}/0.36.4-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/geometry_msgs
	ros-jazzy/rcutils
	ros-jazzy/rosidl_runtime_cpp
	test? (
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_cmake_cpplint
		ros-jazzy/ament_cmake_google_benchmark
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_cmake_xmllint
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
