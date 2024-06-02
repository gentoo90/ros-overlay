# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="multires_image"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/ros2-gbp/mapviz-release/archive/release/jazzy/${PN}/2.3.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/cv_bridge
	ros-jazzy/geometry_msgs
	ros-jazzy/gps_msgs
	ros-jazzy/mapviz
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rclpy
	ros-jazzy/swri_math_util
	ros-jazzy/swri_transform_util
	ros-jazzy/tf2
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
