# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="E-puck2 driver for Webots simulated robot"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/jazzy/${PN}/2023.1.2-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/controller_manager
	ros-jazzy/diff_drive_controller
	ros-jazzy/geometry_msgs
	ros-jazzy/joint_state_broadcaster
	ros-jazzy/nav_msgs
	ros-jazzy/rclpy
	ros-jazzy/robot_state_publisher
	ros-jazzy/rviz2
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/webots_ros2_control
	ros-jazzy/webots_ros2_driver
	ros-jazzy/webots_ros2_msgs
	test? (
		ros-jazzy/ament_copyright
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"