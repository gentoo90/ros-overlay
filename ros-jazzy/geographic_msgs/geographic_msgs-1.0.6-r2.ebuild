# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS messages for Geographic Information Systems."
HOMEPAGE="http://wiki.ros.org/geographic_msgs"
SRC_URI="https://github.com/ros2-gbp/geographic_info-release/archive/release/jazzy/${PN}/1.0.6-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/std_msgs
	ros-jazzy/unique_identifier_msgs
	test? (
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_cmake_cpplint
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
