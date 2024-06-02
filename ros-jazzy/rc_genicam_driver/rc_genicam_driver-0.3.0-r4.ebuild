# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Driver for rc_visard and rc_cube from Roboception GmbH"
HOMEPAGE="https://index.ros.org/p/rc_genicam_driver/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}_ros2-release/archive/release/jazzy/${PN}/0.3.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/diagnostic_updater
	ros-jazzy/image_transport
	ros-jazzy/rc_common_msgs
	ros-jazzy/rc_genicam_api
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/sensor_msgs
	ros-jazzy/stereo_msgs
	test? (
		ros-jazzy/ament_cmake_cppcheck
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
