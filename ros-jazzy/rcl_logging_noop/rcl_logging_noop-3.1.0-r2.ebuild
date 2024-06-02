# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="An rcl logger implementation that doesn\'t do anything with log messages."
HOMEPAGE="https://index.ros.org/p/rcl_logging_noop/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rcl_logging-release/archive/release/jazzy/${PN}/3.1.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rcl_logging_interface
	ros-jazzy/rcutils
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/launch_testing
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	dev-python/empy
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
