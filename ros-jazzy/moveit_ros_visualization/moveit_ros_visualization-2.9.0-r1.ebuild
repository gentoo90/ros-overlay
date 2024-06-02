# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Components of MoveIt that offer visualization"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometric_shapes
	ros-jazzy/interactive_markers
	ros-jazzy/moveit_common
	ros-jazzy/moveit_ros_planning_interface
	ros-jazzy/moveit_ros_robot_interaction
	ros-jazzy/moveit_ros_warehouse
	ros-jazzy/object_recognition_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rclpy
	ros-jazzy/rviz2
	ros-jazzy/tf2_eigen
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/class_loader
	dev-cpp/eigen
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
