# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="A text-based interface to send a robot movement commands."
HOMEPAGE="https://index.ros.org/p/key_teleop/#jazzy"
SRC_URI="https://github.com/ros2-gbp/teleop_tools-release/archive/release/jazzy/${PN}/1.5.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/rclpy
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
