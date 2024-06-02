# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Metapackage for Leo Rover Gazebo simulation in ROS2"
HOMEPAGE="https://index.ros.org/p/leo_simulator/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/leo_gz_bringup
	ros-jazzy/leo_gz_plugins
	ros-jazzy/leo_gz_worlds
	test? (
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
