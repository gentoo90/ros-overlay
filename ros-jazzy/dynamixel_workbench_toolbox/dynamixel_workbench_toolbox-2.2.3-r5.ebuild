# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This package is composed of \'dynamixel_item\', \'dynamixel_tool\', \'dynam[...]"
HOMEPAGE="http://wiki.ros.org/dynamixel_workbench_toolbox"
SRC_URI="https://github.com/ros2-gbp/dynamixel_workbench-release/archive/release/jazzy/${PN}/2.2.3-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/dynamixel_sdk
	ros-jazzy/rclcpp
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
