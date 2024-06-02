# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The CMake API for ament_pclint to perform static code analysis on C/C++\
  [...]"
HOMEPAGE="https://index.ros.org/p/ament_cmake_pclint/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/${PN}/0.17.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	test? (
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_lint_cmake
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_core
	ros-jazzy/ament_cmake_test
	ros-jazzy/ament_pclint
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
