# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Pure C++ driver library for Kobuki."
HOMEPAGE="https://kobuki.readthedocs.io/en/release-1.0.x/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.4.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ecl_command_line
	ros-jazzy/ecl_config
	ros-jazzy/ecl_console
	ros-jazzy/ecl_converters
	ros-jazzy/ecl_devices
	ros-jazzy/ecl_geometry
	ros-jazzy/ecl_mobile_robot
	ros-jazzy/ecl_sigslots
	ros-jazzy/ecl_threads
	ros-jazzy/ecl_time
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	ros-jazzy/ecl_build
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
