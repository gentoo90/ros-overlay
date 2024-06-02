# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Parse a YAML parameter file and populate the C data structure."
HOMEPAGE="https://index.ros.org/p/rcl_yaml_param_parser/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rcl-release/archive/release/jazzy/${PN}/9.2.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/libyaml_vendor
	ros-jazzy/rcutils
	ros-jazzy/rmw
	dev-libs/libyaml
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/mimick_vendor
		ros-jazzy/osrf_testing_tools_cpp
		ros-jazzy/performance_test_fixture
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_gen_version_h
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
