# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides service calls for getting ros meta-information, like list of\
    [...]"
HOMEPAGE="http://ros.org/wiki/rosapi"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/jazzy/${PN}/1.3.2-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/rcl_interfaces
	ros-jazzy/rosidl_default_runtime
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
