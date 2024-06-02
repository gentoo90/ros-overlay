# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="RVIZ plugin for IMU visualization"
HOMEPAGE="http://ros.org/wiki/rviz_imu_plugin"
SRC_URI="https://github.com/ros2-gbp/imu_tools-release/archive/release/jazzy/${PN}/2.1.3-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/message_filters
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rviz_common
	ros-jazzy/rviz_ogre_vendor
	ros-jazzy/rviz_rendering
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_ros
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
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
