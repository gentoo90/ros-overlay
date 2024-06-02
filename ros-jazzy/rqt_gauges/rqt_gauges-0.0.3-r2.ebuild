# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Visualization plugin for several sensors."
HOMEPAGE="https://index.ros.org/p/rqt_gauges/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.0.3-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-Clause-3"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/qt_gui
	ros-jazzy/qt_gui_py_common
	ros-jazzy/rclpy
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_py
	test? (
		ros-jazzy/ament_flake8
		ros-jazzy/ament_xmllint
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
