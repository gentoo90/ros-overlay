# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/ros2-gbp/mapviz-release/archive/release/jazzy/${PN}/2.3.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/cv_bridge
	ros-jazzy/gps_msgs
	ros-jazzy/image_transport
	ros-jazzy/map_msgs
	ros-jazzy/mapviz
	ros-jazzy/marti_common_msgs
	ros-jazzy/marti_nav_msgs
	ros-jazzy/marti_sensor_msgs
	ros-jazzy/marti_visualization_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_action
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/stereo_msgs
	ros-jazzy/swri_image_util
	ros-jazzy/swri_math_util
	ros-jazzy/swri_route_util
	ros-jazzy/swri_transform_util
	ros-jazzy/tf2
	ros-jazzy/visualization_msgs
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ros_environment
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
