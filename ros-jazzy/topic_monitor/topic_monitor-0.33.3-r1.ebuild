# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Package containing tools for monitoring ROS 2 topics."
HOMEPAGE="https://index.ros.org/p/topic_monitor/#jazzy"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/jazzy/${PN}/0.33.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/rclpy
	ros-jazzy/std_msgs
	test? (
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
