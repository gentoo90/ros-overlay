# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS messages for publishing graphs of different data types"
HOMEPAGE="https://github.com/davetcoleman/graph_msgs"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.2.0-6.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/std_msgs
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_cmake
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
