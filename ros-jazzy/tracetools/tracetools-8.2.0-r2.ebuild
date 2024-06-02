# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Tracing wrapper for ROS 2."
HOMEPAGE="https://docs.ros.org/en/rolling/p/tracetools/"
SRC_URI="https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/${PN}/8.2.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	dev-util/lttng-tools
	dev-util/lttng-ust
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_gen_version_h
	ros-jazzy/ament_cmake_ros
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
