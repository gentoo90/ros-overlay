# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A package providing cmake functions for running launch tests from the build."
HOMEPAGE="https://index.ros.org/p/launch_testing_ament_cmake/#jazzy"
SRC_URI="https://github.com/ros2-gbp/launch-release/archive/release/jazzy/${PN}/3.4.2-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	test? (
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/launch_testing
		ros-jazzy/python_cmake_module
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_test
	ros-jazzy/launch_testing
	ros-jazzy/python_cmake_module
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
