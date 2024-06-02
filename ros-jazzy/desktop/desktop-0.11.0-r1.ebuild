# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_base\' and includes high level packages like [...]"
HOMEPAGE="https://index.ros.org/p/desktop/#jazzy"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/jazzy/${PN}/0.11.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/action_tutorials_cpp
	ros-jazzy/action_tutorials_interfaces
	ros-jazzy/action_tutorials_py
	ros-jazzy/angles
	ros-jazzy/composition
	ros-jazzy/demo_nodes_cpp
	ros-jazzy/demo_nodes_cpp_native
	ros-jazzy/demo_nodes_py
	ros-jazzy/depthimage_to_laserscan
	ros-jazzy/dummy_map_server
	ros-jazzy/dummy_robot_bringup
	ros-jazzy/dummy_sensors
	ros-jazzy/examples_rclcpp_minimal_action_client
	ros-jazzy/examples_rclcpp_minimal_action_server
	ros-jazzy/examples_rclcpp_minimal_client
	ros-jazzy/examples_rclcpp_minimal_composition
	ros-jazzy/examples_rclcpp_minimal_publisher
	ros-jazzy/examples_rclcpp_minimal_service
	ros-jazzy/examples_rclcpp_minimal_subscriber
	ros-jazzy/examples_rclcpp_minimal_timer
	ros-jazzy/examples_rclcpp_multithreaded_executor
	ros-jazzy/examples_rclpy_executors
	ros-jazzy/examples_rclpy_minimal_action_client
	ros-jazzy/examples_rclpy_minimal_action_server
	ros-jazzy/examples_rclpy_minimal_client
	ros-jazzy/examples_rclpy_minimal_publisher
	ros-jazzy/examples_rclpy_minimal_service
	ros-jazzy/examples_rclpy_minimal_subscriber
	ros-jazzy/image_tools
	ros-jazzy/intra_process_demo
	ros-jazzy/joy
	ros-jazzy/lifecycle
	ros-jazzy/logging_demo
	ros-jazzy/pcl_conversions
	ros-jazzy/pendulum_control
	ros-jazzy/pendulum_msgs
	ros-jazzy/quality_of_service_demo_cpp
	ros-jazzy/quality_of_service_demo_py
	ros-jazzy/ros_base
	ros-jazzy/rqt_common_plugins
	ros-jazzy/rviz2
	ros-jazzy/rviz_default_plugins
	ros-jazzy/teleop_twist_joy
	ros-jazzy/teleop_twist_keyboard
	ros-jazzy/tlsf
	ros-jazzy/tlsf_cpp
	ros-jazzy/topic_monitor
	ros-jazzy/turtlesim
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
