# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="A Python GUI plugin for introspecting available ROS message types."
HOMEPAGE="http://wiki.ros.org/rqt_msg"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.5.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/python_qt_binding
	ros-jazzy/rclpy
	ros-jazzy/rosidl_runtime_py
	ros-jazzy/rqt_console
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_py
	ros-jazzy/rqt_py_common
	test? (
		ros-jazzy/ament_flake8
		ros-jazzy/ament_xmllint
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
