# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The wiimote package allows ROS nodes to communicate with a Nintendo Wiimote[...]"
HOMEPAGE="http://www.ros.org/wiki/wiimote"
SRC_URI="https://github.com/ros2-gbp/joystick_drivers-release/archive/release/jazzy/${PN}/3.3.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	ros-jazzy/wiimote_msgs
	app-misc/cwiid
	net-wireless/bluez-libs
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_auto
	app-misc/cwiid
	net-wireless/bluez-libs
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
