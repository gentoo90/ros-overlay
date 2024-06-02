# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="connects to a GPSd server and broadcasts GPS fixes \
   using the NavSatFix[...]"
HOMEPAGE="http://ros.org/wiki/gpsd_client"
SRC_URI="https://github.com/ros2-gbp/gps_umd-release/archive/release/jazzy/${PN}/2.0.3-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/gps_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/sensor_msgs
	sci-geosciences/gpsd
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
