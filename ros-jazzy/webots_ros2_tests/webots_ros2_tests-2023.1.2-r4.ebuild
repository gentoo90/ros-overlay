# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="System tests for \`webots_ros2\` packages."
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/jazzy/${PN}/2023.1.2-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/geometry_msgs
		ros-jazzy/launch
		ros-jazzy/launch_testing
		ros-jazzy/launch_testing_ament_cmake
		ros-jazzy/launch_testing_ros
		ros-jazzy/sensor_msgs
		ros-jazzy/std_msgs
		ros-jazzy/std_srvs
		ros-jazzy/tf2_ros
		ros-jazzy/webots_ros2_epuck
		ros-jazzy/webots_ros2_mavic
		ros-jazzy/webots_ros2_tesla
		ros-jazzy/webots_ros2_tiago
		ros-jazzy/webots_ros2_turtlebot
		ros-jazzy/webots_ros2_universal_robot
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/rclpy
	ros-jazzy/ros2bag
	ros-jazzy/rosbag2_storage_default_plugins
	ros-jazzy/webots_ros2_driver
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
