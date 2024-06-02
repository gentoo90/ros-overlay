# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Interface between Webots and ROS2"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2023.1.2-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/rclpy
	ros-jazzy/std_msgs
	ros-jazzy/webots_ros2_control
	ros-jazzy/webots_ros2_driver
	ros-jazzy/webots_ros2_epuck
	ros-jazzy/webots_ros2_importer
	ros-jazzy/webots_ros2_mavic
	ros-jazzy/webots_ros2_msgs
	ros-jazzy/webots_ros2_tesla
	ros-jazzy/webots_ros2_tiago
	ros-jazzy/webots_ros2_turtlebot
	ros-jazzy/webots_ros2_universal_robot
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/webots_ros2_tests
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
