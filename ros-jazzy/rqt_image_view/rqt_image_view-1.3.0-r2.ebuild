# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="rqt_image_view provides a GUI plugin for displaying images using image_tran[...]"
HOMEPAGE="http://wiki.ros.org/rqt_image_view"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.3.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/cv_bridge
	ros-jazzy/geometry_msgs
	ros-jazzy/image_transport
	ros-jazzy/qt_gui_cpp
	ros-jazzy/rclcpp
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_cpp
	ros-jazzy/sensor_msgs
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
