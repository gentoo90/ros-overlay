# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Demo and example launch files for MOLA"
HOMEPAGE="https://github.com/MOLAorg/"
SRC_URI="https://github.com/ros2-gbp/mola-release/archive/release/jazzy/${PN}/1.0.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_gtest
	ros-jazzy/ament_cmake_xmllint
	ros-jazzy/ros_environment
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
