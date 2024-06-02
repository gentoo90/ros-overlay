# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS 2 controller that offers a service to clear faults in a hardware interface"
HOMEPAGE="https://index.ros.org/p/picknik_reset_fault_controller/#jazzy"
SRC_URI="https://github.com/ros2-gbp/picknik_controllers-release/archive/release/jazzy/${PN}/0.0.3-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/controller_interface
	ros-jazzy/example_interfaces
	ros-jazzy/geometry_msgs
	ros-jazzy/rclcpp
	ros-jazzy/realtime_tools
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
