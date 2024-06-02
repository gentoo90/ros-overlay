# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="This rqt plugin provides a way to view and edit parameters on nodes."
HOMEPAGE="http://wiki.ros.org/rqt_reconfigure"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.6.2-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/python_qt_binding
	ros-jazzy/qt_gui_py_common
	ros-jazzy/rclpy
	ros-jazzy/rqt_console
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_py
	ros-jazzy/rqt_py_common
	dev-python/pyyaml
	test? (
		ros-jazzy/ament_copyright
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
