# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="The component command for ROS 2 command line tools."
HOMEPAGE="https://index.ros.org/p/ros2component/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/${PN}/0.32.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/composition_interfaces
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclcpp_components
	ros-jazzy/rclpy
	ros-jazzy/ros2cli
	ros-jazzy/ros2node
	ros-jazzy/ros2param
	ros-jazzy/ros2pkg
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
		ros-jazzy/ament_xmllint
		dev-python/pytest
		dev-python/pytest-timeout
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"