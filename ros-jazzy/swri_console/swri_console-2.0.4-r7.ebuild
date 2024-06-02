# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A rosout GUI viewer developed at Southwest Research Insititute as an\
     [...]"
HOMEPAGE="http://ros.org/wiki/swri_console"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.4-7.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclcpp
	ros-jazzy/rosidl_default_runtime
	dev-libs/boost[threads]
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ros_environment
	ros-jazzy/rosidl_default_generators
	dev-qt/qtopengl:5
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
