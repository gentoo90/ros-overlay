# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="The topic command for ROS 2 command line tools."
HOMEPAGE="https://index.ros.org/p/ros2topic/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/${PN}/0.32.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD-3-Clause )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclpy
	ros-jazzy/ros2cli
	ros-jazzy/rosidl_runtime_py
	dev-python/numpy
	dev-python/pyyaml
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
		ros-jazzy/ament_xmllint
		ros-jazzy/geometry_msgs
		ros-jazzy/launch
		ros-jazzy/launch_ros
		ros-jazzy/launch_testing
		ros-jazzy/launch_testing_ros
		ros-jazzy/rosgraph_msgs
		ros-jazzy/std_msgs
		ros-jazzy/test_msgs
		dev-python/pytest
		dev-python/pytest-timeout
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
