# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides a ublox_gnss node for a u-blox GPS GNSS receiver using Gen 9 UBX P[...]"
HOMEPAGE="https://github.com/aussierobots/ublox_dgnss"
SRC_URI="https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/jazzy/${PN}/0.5.3-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rtcm_msgs
	ros-jazzy/std_msgs
	ros-jazzy/ublox_ubx_interfaces
	ros-jazzy/ublox_ubx_msgs
	virtual/libusb:1
	test? (
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
