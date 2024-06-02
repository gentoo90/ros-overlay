# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="A \(to be\) generic joystick interface to control a robot"
HOMEPAGE="https://index.ros.org/p/joy_teleop/#jazzy"
SRC_URI="https://github.com/ros2-gbp/teleop_tools-release/archive/release/jazzy/${PN}/1.5.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/control_msgs
	ros-jazzy/rclpy
	ros-jazzy/rosidl_runtime_py
	ros-jazzy/sensor_msgs
	ros-jazzy/teleop_tools_msgs
	ros-jazzy/trajectory_msgs
	test? (
		ros-jazzy/action_tutorials_interfaces
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
		ros-jazzy/ament_xmllint
		ros-jazzy/example_interfaces
		ros-jazzy/geometry_msgs
		ros-jazzy/launch_ros
		ros-jazzy/launch_testing
		ros-jazzy/std_msgs
		ros-jazzy/std_srvs
		ros-jazzy/test_msgs
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
