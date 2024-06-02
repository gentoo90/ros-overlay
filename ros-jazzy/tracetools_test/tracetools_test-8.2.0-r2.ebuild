# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Utilities for tracing-related tests."
HOMEPAGE="https://docs.ros.org/en/rolling/p/tracetools_test/"
SRC_URI="https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/${PN}/8.2.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/tracetools_launch
	ros-jazzy/tracetools_read
	ros-jazzy/tracetools_trace
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_mypy
		ros-jazzy/ament_pep257
		ros-jazzy/ament_xmllint
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
