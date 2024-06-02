# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Messages, services and actions used by MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.4.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/action_msgs
	ros-jazzy/geometry_msgs
	ros-jazzy/object_recognition_msgs
	ros-jazzy/octomap_msgs
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/sensor_msgs
	ros-jazzy/shape_msgs
	ros-jazzy/std_msgs
	ros-jazzy/trajectory_msgs
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
