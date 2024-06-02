# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Several default plugins for rviz to cover the basic functionality."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/jazzy/${PN}/14.1.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/gz_math_vendor
	ros-jazzy/image_transport
	ros-jazzy/interactive_markers
	ros-jazzy/laser_geometry
	ros-jazzy/map_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/pluginlib
	ros-jazzy/point_cloud_transport
	ros-jazzy/rclcpp
	ros-jazzy/resource_retriever
	ros-jazzy/rviz_common
	ros-jazzy/rviz_ogre_vendor
	ros-jazzy/rviz_rendering
	ros-jazzy/tf2
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/urdf
	ros-jazzy/visualization_msgs
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
	test? (
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_cmake_cpplint
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_index_cpp
		ros-jazzy/ament_lint_auto
		ros-jazzy/rviz_rendering_tests
		ros-jazzy/rviz_visual_testing_framework
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	dev-qt/qtcore:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
