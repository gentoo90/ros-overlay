# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Utils for working with ros2_canopen."
HOMEPAGE="https://index.ros.org/p/canopen_utils/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/${PN}/0.2.9-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/canopen_interfaces
	ros-jazzy/lifecycle_msgs
	ros-jazzy/rclpy
	ros-jazzy/std_msgs
	test? (
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
