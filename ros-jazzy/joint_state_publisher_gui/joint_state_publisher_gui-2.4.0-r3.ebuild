# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="This package contains a GUI tool for setting and publishing joint state val[...]"
HOMEPAGE="http://www.ros.org/wiki/joint_state_publisher"
SRC_URI="https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/jazzy/${PN}/2.4.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/joint_state_publisher
	ros-jazzy/python_qt_binding
	ros-jazzy/rclpy
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
