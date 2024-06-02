# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Implementation of rcl_logging API for an spdlog backend."
HOMEPAGE="https://index.ros.org/p/rcl_logging_spdlog/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rcl_logging-release/archive/release/jazzy/${PN}/3.1.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rcl_logging_interface
	ros-jazzy/rcpputils
	ros-jazzy/rcutils
	ros-jazzy/spdlog_vendor
	dev-libs/spdlog
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/performance_test_fixture
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
