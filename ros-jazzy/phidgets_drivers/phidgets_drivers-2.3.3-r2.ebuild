# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="API and ROS drivers for Phidgets devices"
HOMEPAGE="http://ros.org/wiki/phidgets_drivers"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.3.3-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-LGPL"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/libphidget22
	ros-jazzy/phidgets_accelerometer
	ros-jazzy/phidgets_analog_inputs
	ros-jazzy/phidgets_api
	ros-jazzy/phidgets_digital_inputs
	ros-jazzy/phidgets_digital_outputs
	ros-jazzy/phidgets_gyroscope
	ros-jazzy/phidgets_high_speed_encoder
	ros-jazzy/phidgets_ik
	ros-jazzy/phidgets_magnetometer
	ros-jazzy/phidgets_motors
	ros-jazzy/phidgets_msgs
	ros-jazzy/phidgets_spatial
	ros-jazzy/phidgets_temperature
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
