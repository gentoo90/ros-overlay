# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Command line tools for introspecting ROS systems"
HOMEPAGE="https://index.ros.org/p/swri_cli_tools/#jazzy"
SRC_URI="https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/${PN}/3.6.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/marti_introspection_msgs
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclpy
	ros-jazzy/ros2cli
	dev-python/natsort
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
