# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Launch files for common URDF operations"
HOMEPAGE="https://index.ros.org/p/urdf_launch/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.1.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/joint_state_publisher
	ros-jazzy/joint_state_publisher_gui
	ros-jazzy/launch_ros
	ros-jazzy/robot_state_publisher
	ros-jazzy/rviz2
	ros-jazzy/rviz_common
	ros-jazzy/rviz_default_plugins
	ros-jazzy/xacro
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
