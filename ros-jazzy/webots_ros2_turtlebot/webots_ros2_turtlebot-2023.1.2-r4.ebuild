# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="TurtleBot3 Burger robot ROS2 interface for Webots."
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/jazzy/${PN}/2023.1.2-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/controller_manager
	ros-jazzy/diff_drive_controller
	ros-jazzy/joint_state_broadcaster
	ros-jazzy/rclpy
	ros-jazzy/robot_state_publisher
	ros-jazzy/rviz2
	ros-jazzy/tf2_ros
	ros-jazzy/webots_ros2_control
	ros-jazzy/webots_ros2_driver
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
