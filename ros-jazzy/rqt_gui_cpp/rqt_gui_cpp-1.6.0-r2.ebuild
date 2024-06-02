# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS."
HOMEPAGE="http://ros.org/wiki/rqt_gui_cpp"
SRC_URI="https://github.com/ros2-gbp/rqt-release/archive/release/jazzy/${PN}/1.6.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/pluginlib
	ros-jazzy/qt_gui_cpp
	ros-jazzy/rclcpp
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
