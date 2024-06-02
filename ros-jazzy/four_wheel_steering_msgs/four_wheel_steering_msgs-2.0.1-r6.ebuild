# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS messages for robots using FourWheelSteering."
HOMEPAGE="http://ros.org/wiki/four_wheel_steering_msgs"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.1-6.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/std_msgs
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
