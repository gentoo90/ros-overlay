# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A package containing RViz2 plugins for RMF"
HOMEPAGE="https://index.ros.org/p/rmf_visualization_rviz2_plugins/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rmf_visualization-release/archive/release/jazzy/${PN}/2.2.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/resource_retriever
	ros-jazzy/rmf_door_msgs
	ros-jazzy/rmf_lift_msgs
	ros-jazzy/rmf_traffic_ros2
	ros-jazzy/rmf_visualization_msgs
	ros-jazzy/rviz_common
	ros-jazzy/rviz_default_plugins
	ros-jazzy/rviz_rendering
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	test? (
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/rmf_utils
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-cpp/eigen
	dev-qt/qtcore:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
