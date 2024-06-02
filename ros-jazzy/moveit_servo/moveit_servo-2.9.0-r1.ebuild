# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides real-time manipulator Cartesian and joint servoing."
HOMEPAGE="https://ros-planning.github.io/moveit_tutorials"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/control_msgs
	ros-jazzy/controller_manager
	ros-jazzy/generate_parameter_library
	ros-jazzy/geometry_msgs
	ros-jazzy/gripper_controllers
	ros-jazzy/joint_state_broadcaster
	ros-jazzy/joint_trajectory_controller
	ros-jazzy/joy
	ros-jazzy/launch_param_builder
	ros-jazzy/moveit_common
	ros-jazzy/moveit_configs_utils
	ros-jazzy/moveit_core
	ros-jazzy/moveit_msgs
	ros-jazzy/moveit_ros_planning
	ros-jazzy/moveit_ros_planning_interface
	ros-jazzy/pluginlib
	ros-jazzy/realtime_tools
	ros-jazzy/robot_state_publisher
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_ros
	ros-jazzy/trajectory_msgs
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/moveit_resources_panda_moveit_config
		ros-jazzy/ros_testing
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
