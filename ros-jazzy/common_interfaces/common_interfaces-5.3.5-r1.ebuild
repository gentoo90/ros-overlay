# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="common_interfaces contains messages and services that are widely used by ot[...]"
HOMEPAGE="https://index.ros.org/p/common_interfaces/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/5.3.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/actionlib_msgs
	ros-jazzy/builtin_interfaces
	ros-jazzy/diagnostic_msgs
	ros-jazzy/geometry_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/sensor_msgs
	ros-jazzy/shape_msgs
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	ros-jazzy/stereo_msgs
	ros-jazzy/trajectory_msgs
	ros-jazzy/visualization_msgs
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
