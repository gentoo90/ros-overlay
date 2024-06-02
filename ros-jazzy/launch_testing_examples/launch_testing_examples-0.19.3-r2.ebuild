# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Examples of simple launch tests"
HOMEPAGE="https://index.ros.org/p/launch_testing_examples/#jazzy"
SRC_URI="https://github.com/ros2-gbp/examples-release/archive/release/jazzy/${PN}/0.19.3-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/demo_nodes_cpp
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/launch_testing
	ros-jazzy/launch_testing_ros
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclpy
	ros-jazzy/ros2bag
	ros-jazzy/std_msgs
	dev-python/pytest
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
