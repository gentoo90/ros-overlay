# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="<p>\
      MoveIt Resources for testing: Pilz PRBT 6\
    </p>\
    <p>\
\	[...]"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/joint_state_publisher
	ros-jazzy/moveit_resources_prbt_ikfast_manipulator_plugin
	ros-jazzy/moveit_resources_prbt_support
	ros-jazzy/moveit_ros_move_group
	ros-jazzy/robot_state_publisher
	ros-jazzy/rviz2
	ros-jazzy/xacro
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
