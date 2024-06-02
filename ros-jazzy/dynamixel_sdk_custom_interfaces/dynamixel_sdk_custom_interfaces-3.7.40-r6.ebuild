# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS2 custom interface examples using ROBOTIS DYNAMIXEL SDK"
HOMEPAGE="http://wiki.ros.org/dynamixel_sdk"
SRC_URI="https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/jazzy/${PN}/3.7.40-6.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/rosidl_default_runtime
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
