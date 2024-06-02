# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates [...]"
HOMEPAGE="http://ros.org/wiki/qt_gui_cpp"
SRC_URI="https://github.com/ros2-gbp/qt_gui_core-release/archive/release/jazzy/${PN}/2.7.4-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/pluginlib
	ros-jazzy/qt_gui
	ros-jazzy/tinyxml2_vendor
	test? (
		ros-jazzy/ament_cmake_pytest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/python_qt_binding
	dev-qt/qtcore:5
	dev-qt/qtcore:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
