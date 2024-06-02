# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Hybrid planning components of MoveIt 2"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/controller_manager
	ros-jazzy/moveit_common
	ros-jazzy/moveit_core
	ros-jazzy/moveit_msgs
	ros-jazzy/moveit_resources_panda_moveit_config
	ros-jazzy/moveit_ros_planning
	ros-jazzy/moveit_ros_planning_interface
	ros-jazzy/pluginlib
	ros-jazzy/position_controllers
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_action
	ros-jazzy/rclcpp_components
	ros-jazzy/robot_state_publisher
	ros-jazzy/rviz2
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	ros-jazzy/tf2_ros
	ros-jazzy/trajectory_msgs
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/moveit_planners_ompl
		ros-jazzy/ros_testing
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
