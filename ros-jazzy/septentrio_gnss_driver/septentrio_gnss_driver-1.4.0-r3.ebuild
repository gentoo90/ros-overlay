# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROSaic: C++ driver for Septentrio\'s GNSS and INS receivers"
HOMEPAGE="https://github.com/septentrio-gnss/septentrio_gnss_driver"
SRC_URI="https://github.com/ros2-gbp/${PN}_ros2-release/archive/release/jazzy/${PN}/1.4.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause-License"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/diagnostic_msgs
	ros-jazzy/geometry_msgs
	ros-jazzy/gps_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/nmea_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	dev-libs/boost[python]
	net-libs/libpcap
	sci-geosciences/GeographicLib
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
