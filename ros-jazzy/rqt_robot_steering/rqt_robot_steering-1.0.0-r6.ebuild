# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="rqt_robot_steering provides a GUI plugin for steering a robot using Twist m[...]"
HOMEPAGE="http://wiki.ros.org/rqt_robot_steering"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.0.0-6.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/geometry_msgs
	ros-jazzy/python_qt_binding
	ros-jazzy/rclpy
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_py
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
