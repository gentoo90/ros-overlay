# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="diagnostic_common_diagnostics"
HOMEPAGE="http://ros.org/wiki/diagnostic_common_diagnostics"
SRC_URI="https://github.com/ros2-gbp/diagnostics-release/archive/release/jazzy/${PN}/3.1.2-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/diagnostic_updater
	ros-jazzy/rclpy
	dev-python/ntplib
	test? (
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
