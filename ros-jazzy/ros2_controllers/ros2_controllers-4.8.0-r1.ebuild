# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Metapackage for ROS2 controllers related packages"
HOMEPAGE="https://index.ros.org/p/ros2_controllers/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/4.8.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ackermann_steering_controller
	ros-jazzy/admittance_controller
	ros-jazzy/bicycle_steering_controller
	ros-jazzy/diff_drive_controller
	ros-jazzy/effort_controllers
	ros-jazzy/force_torque_sensor_broadcaster
	ros-jazzy/forward_command_controller
	ros-jazzy/imu_sensor_broadcaster
	ros-jazzy/joint_state_broadcaster
	ros-jazzy/joint_trajectory_controller
	ros-jazzy/pid_controller
	ros-jazzy/position_controllers
	ros-jazzy/range_sensor_broadcaster
	ros-jazzy/steering_controllers_library
	ros-jazzy/tricycle_controller
	ros-jazzy/tricycle_steering_controller
	ros-jazzy/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
