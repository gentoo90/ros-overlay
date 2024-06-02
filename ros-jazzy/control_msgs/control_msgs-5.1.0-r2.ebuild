# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="control_msgs contains base messages and actions useful for\
    controlling[...]"
HOMEPAGE="http://ros.org/wiki/control_msgs"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/5.1.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/action_msgs
	ros-jazzy/builtin_interfaces
	ros-jazzy/geometry_msgs
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/trajectory_msgs
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
