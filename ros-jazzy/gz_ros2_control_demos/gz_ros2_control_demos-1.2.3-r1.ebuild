# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="gz_ros2_control_demos"
HOMEPAGE="https://github.com/ros-controls/gz_ros2_control/blob/master/README.md"
SRC_URI="https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/jazzy/${PN}/1.2.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/control_msgs
	ros-jazzy/diff_drive_controller
	ros-jazzy/effort_controllers
	ros-jazzy/geometry_msgs
	ros-jazzy/gz_ros2_control
	ros-jazzy/hardware_interface
	ros-jazzy/imu_sensor_broadcaster
	ros-jazzy/joint_state_broadcaster
	ros-jazzy/joint_trajectory_controller
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/rclcpp
	ros-jazzy/robot_state_publisher
	ros-jazzy/ros2controlcli
	ros-jazzy/ros2launch
	ros-jazzy/ros_gz_bridge
	ros-jazzy/ros_gz_sim
	ros-jazzy/std_msgs
	ros-jazzy/tricycle_controller
	ros-jazzy/velocity_controllers
	ros-jazzy/xacro
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rclcpp_action
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
