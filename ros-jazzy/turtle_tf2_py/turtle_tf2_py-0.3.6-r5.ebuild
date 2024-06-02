# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="turtle_tf2_py demonstrates how to write a ROS2 Python tf2 broadcaster and l[...]"
HOMEPAGE="https://index.ros.org/p/turtle_tf2_py/#jazzy"
SRC_URI="https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/jazzy/${PN}/0.3.6-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/rclpy
	ros-jazzy/tf2_ros
	ros-jazzy/turtlesim
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
