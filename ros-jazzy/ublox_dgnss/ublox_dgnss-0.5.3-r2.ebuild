# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides a ublox_dgnss node for a u-blox GPS DGNSS receiver using Gen 9 UBX[...]"
HOMEPAGE="https://github.com/aussierobots/ublox_dgnss"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.5.3-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ntrip_client_node
	ros-jazzy/ublox_dgnss_node
	ros-jazzy/ublox_nav_sat_fix_hp_node
	ros-jazzy/ublox_ubx_interfaces
	ros-jazzy/ublox_ubx_msgs
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
