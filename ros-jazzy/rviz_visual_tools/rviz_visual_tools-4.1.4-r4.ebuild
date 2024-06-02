# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Utility functions for displaying and debugging data in Rviz via published m[...]"
HOMEPAGE="https://github.com/PickNikRobotics/rviz_visual_tools"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/4.1.4-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/eigen_stl_containers
	ros-jazzy/geometry_msgs
	ros-jazzy/interactive_markers
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rviz2
	ros-jazzy/rviz_common
	ros-jazzy/rviz_default_plugins
	ros-jazzy/rviz_ogre_vendor
	ros-jazzy/rviz_rendering
	ros-jazzy/sensor_msgs
	ros-jazzy/shape_msgs
	ros-jazzy/std_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/trajectory_msgs
	ros-jazzy/visualization_msgs
	dev-cpp/eigen
	dev-qt/qtwidgets:5
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/eigen3_cmake_module
	dev-qt/qtcore:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
