# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="GameController-Robot communication in RoboCup SPL at RoboCup2022"
HOMEPAGE="https://index.ros.org/p/gc_spl_2022/#jazzy"
SRC_URI="https://github.com/ros2-gbp/game_controller_spl-release/archive/release/jazzy/${PN}/4.0.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rcgcd_spl_14
	ros-jazzy/rcgcd_spl_14_conversion
	ros-jazzy/rcgcrd_spl_4
	ros-jazzy/rcgcrd_spl_4_conversion
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
