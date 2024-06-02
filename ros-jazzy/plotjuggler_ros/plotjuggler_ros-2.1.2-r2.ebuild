# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="PlotJuggler plugin for ROS"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/jazzy/${PN}/2.1.2-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="AGPLv3"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/plotjuggler
	ros-jazzy/rclcpp
	ros-jazzy/rcpputils
	ros-jazzy/ros_environment
	ros-jazzy/rosbag2
	ros-jazzy/rosbag2_transport
	ros-jazzy/tf2_msgs
	ros-jazzy/tf2_ros
	dev-libs/boost[python]
	dev-qt/qtcore:5
	dev-qt/qtsvg:5
	dev-qt/qttest:5
	dev-qt/qtwebsockets:5
	dev-qt/qtwidgets:5
	sys-devel/binutils
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
