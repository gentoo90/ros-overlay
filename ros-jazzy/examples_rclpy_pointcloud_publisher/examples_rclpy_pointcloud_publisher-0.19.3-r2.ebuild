# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Example on how to publish a Pointcloud2 message"
HOMEPAGE="https://index.ros.org/p/examples_rclpy_pointcloud_publisher/#jazzy"
SRC_URI="https://github.com/ros2-gbp/examples-release/archive/release/jazzy/${PN}/0.19.3-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclpy
	ros-jazzy/sensor_msgs
	ros-jazzy/sensor_msgs_py
	ros-jazzy/std_msgs
	dev-python/numpy
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
