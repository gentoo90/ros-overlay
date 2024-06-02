# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Driver for NovAtel receivers"
HOMEPAGE="https://github.com/swri-robotics/novatel_gps_driver"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/4.1.2-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/diagnostic_msgs
	ros-jazzy/diagnostic_updater
	ros-jazzy/gps_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/novatel_gps_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/swri_math_util
	ros-jazzy/swri_roscpp
	ros-jazzy/swri_serial_util
	ros-jazzy/tf2
	ros-jazzy/tf2_geometry_msgs
	dev-libs/boost[python]
	net-libs/libpcap
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_index_cpp
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
