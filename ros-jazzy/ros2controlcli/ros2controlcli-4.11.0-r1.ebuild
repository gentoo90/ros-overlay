# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="The ROS 2 command line tools for ROS2 Control."
HOMEPAGE="https://index.ros.org/p/ros2controlcli/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/${PN}/4.11.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/controller_manager
	ros-jazzy/controller_manager_msgs
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclpy
	ros-jazzy/ros2cli
	ros-jazzy/ros2node
	ros-jazzy/ros2param
	ros-jazzy/rosidl_runtime_py
	dev-python/pygraphviz
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
		ros-jazzy/ament_xmllint
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
