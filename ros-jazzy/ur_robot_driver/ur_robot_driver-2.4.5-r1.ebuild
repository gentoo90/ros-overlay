# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 contr[...]"
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/issues"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/jazzy/${PN}/2.4.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/backward_ros
	ros-jazzy/controller_manager
	ros-jazzy/controller_manager_msgs
	ros-jazzy/force_torque_sensor_broadcaster
	ros-jazzy/geometry_msgs
	ros-jazzy/hardware_interface
	ros-jazzy/joint_state_broadcaster
	ros-jazzy/joint_state_publisher
	ros-jazzy/joint_trajectory_controller
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/pluginlib
	ros-jazzy/position_controllers
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/rclpy
	ros-jazzy/robot_state_publisher
	ros-jazzy/ros2_controllers_test_nodes
	ros-jazzy/rviz2
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/ur_client_library
	ros-jazzy/ur_controllers
	ros-jazzy/ur_dashboard_msgs
	ros-jazzy/ur_description
	ros-jazzy/ur_msgs
	ros-jazzy/urdf
	ros-jazzy/velocity_controllers
	ros-jazzy/xacro
	net-misc/socat
	test? (
		ros-jazzy/launch_testing_ament_cmake
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
