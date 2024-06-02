# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="rqt_py_common provides common functionality for rqt plugins written in Pyth[...]"
HOMEPAGE="http://ros.org/wiki/rqt_py_common"
SRC_URI="https://github.com/ros2-gbp/rqt-release/archive/release/jazzy/${PN}/1.6.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/python_qt_binding
	ros-jazzy/qt_gui
	ros-jazzy/rclpy
	dev-qt/qtcore:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
	test? (
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/python_cmake_module
		ros-jazzy/rosidl_default_generators
		ros-jazzy/rosidl_default_runtime
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
