# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Advanced metric map classes, using the generic \`mrpt::maps::CMetricMap\` i[...]"
HOMEPAGE="https://github.com/MOLAorg/mola/tree/develop/mola_metric_maps"
SRC_URI="https://github.com/ros2-gbp/mola-release/archive/release/jazzy/${PN}/1.0.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="GPL-3.0-only"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/mola_common
	ros-jazzy/mrpt2
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
