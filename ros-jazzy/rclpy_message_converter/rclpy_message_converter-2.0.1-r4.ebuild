# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Converts between Python dictionaries and JSON to rclpy messages."
HOMEPAGE="http://ros.org/wiki/rospy_message_converter"
SRC_URI="https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/jazzy/${PN}/2.0.1-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclpy
	ros-jazzy/rosidl_parser
	ros-jazzy/rosidl_runtime_py
	dev-python/numpy
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
		ros-jazzy/geometry_msgs
		ros-jazzy/rclpy_message_converter_msgs
		ros-jazzy/std_msgs
		ros-jazzy/std_srvs
		ros-jazzy/tf2_msgs
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/builtin_interfaces
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
