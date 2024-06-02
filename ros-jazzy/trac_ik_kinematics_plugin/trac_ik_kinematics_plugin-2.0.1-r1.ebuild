# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A MoveIt! Kinematics plugin using TRAC-IK"
HOMEPAGE="https://index.ros.org/p/trac_ik_kinematics_plugin/#jazzy"
SRC_URI="https://github.com/ros2-gbp/trac_ik-release/archive/release/jazzy/${PN}/2.0.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/class_loader
	ros-jazzy/generate_parameter_library
	ros-jazzy/moveit_core
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/tf2_kdl
	ros-jazzy/trac_ik_lib
	ros-jazzy/urdf
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
