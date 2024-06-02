# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="<p>\
      MoveIt Resources for testing: Franka Emika Panda\
    </p>\
    [...]"
HOMEPAGE="http://moveit.ros.org/"
SRC_URI="https://github.com/ros2-gbp/moveit_resources-release/archive/release/jazzy/${PN}/3.0.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/joint_state_publisher
	ros-jazzy/joint_state_publisher_gui
	ros-jazzy/moveit_resources_panda_description
	ros-jazzy/robot_state_publisher
	ros-jazzy/xacro
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
