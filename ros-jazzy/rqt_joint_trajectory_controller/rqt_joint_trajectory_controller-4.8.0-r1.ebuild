# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Graphical frontend for interacting with joint_trajectory_controller instances."
HOMEPAGE="https://index.ros.org/p/rqt_joint_trajectory_controller/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/${PN}/4.8.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/control_msgs
	ros-jazzy/controller_manager_msgs
	ros-jazzy/python_qt_binding
	ros-jazzy/qt_gui
	ros-jazzy/rclpy
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_py
	ros-jazzy/trajectory_msgs
	dev-python/rospkg
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
