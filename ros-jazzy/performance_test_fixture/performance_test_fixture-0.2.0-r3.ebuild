# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Test fixture and CMake macro for using osrf_testing_tools_cpp with Google B[...]"
HOMEPAGE="https://index.ros.org/p/performance_test_fixture/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.2.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/google_benchmark_vendor
	ros-jazzy/osrf_testing_tools_cpp
	test? (
		ros-jazzy/ament_cmake_google_benchmark
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_core
	ros-jazzy/ament_cmake_export_dependencies
	ros-jazzy/ament_cmake_export_targets
	ros-jazzy/ament_cmake_google_benchmark
	ros-jazzy/ament_cmake_test
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
