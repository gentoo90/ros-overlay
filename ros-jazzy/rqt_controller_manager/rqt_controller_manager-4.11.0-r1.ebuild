# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Graphical frontend for interacting with the controller manager."
HOMEPAGE="http://ros.org/wiki/rqt_controller_manager"
SRC_URI="https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/${PN}/4.11.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/controller_manager
	ros-jazzy/controller_manager_msgs
	ros-jazzy/rclpy
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_py
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
