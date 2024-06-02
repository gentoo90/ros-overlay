# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="The system_fingerprint package"
HOMEPAGE="https://index.ros.org/p/system_fingerprint/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros_${PN}-release/archive/release/jazzy/${PN}/0.7.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-2-clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclpy
	ros-jazzy/ros2action
	ros-jazzy/ros2cli
	ros-jazzy/ros2node
	ros-jazzy/ros2param
	ros-jazzy/ros2topic
	dev-python/git-python
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
