# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ros2 hardware interface for nmea_gps"
HOMEPAGE="https://index.ros.org/p/nmea_hardware_interface/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.0.1-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/controller_interface
	ros-jazzy/geographic_msgs
	ros-jazzy/hardware_interface
	ros-jazzy/nmea_msgs
	ros-jazzy/pluginlib
	ros-jazzy/quaternion_operation
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/realtime_tools
	ros-jazzy/ros2_control
	ros-jazzy/rviz2
	dev-libs/boost[python]
	x11-libs/gtk+:3
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ouxt_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
