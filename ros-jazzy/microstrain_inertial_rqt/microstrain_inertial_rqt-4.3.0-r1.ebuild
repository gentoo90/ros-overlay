# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="The microstrain_inertial_rqt package provides several RQT widgets to view t[...]"
HOMEPAGE="https://github.com/LORD-MicroStrain/microstrain_inertial"
SRC_URI="https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/jazzy/${PN}/4.3.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/microstrain_inertial_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/rclpy
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_py
	ros-jazzy/std_msgs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
