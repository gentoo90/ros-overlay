# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Package for TurtleBot3 fake node. With this package, simple tests can be do[...]"
HOMEPAGE="http://turtlebot3.robotis.com"
SRC_URI="https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/jazzy/${PN}/2.2.5-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_cmake
	ros-jazzy/geometry_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/rclcpp
	ros-jazzy/robot_state_publisher
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_msgs
	ros-jazzy/turtlebot3_msgs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
