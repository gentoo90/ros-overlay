# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Example of using rclc_executor"
HOMEPAGE="https://index.ros.org/p/rclc_examples/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rclc-release/archive/release/jazzy/${PN}/6.1.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/example_interfaces
	ros-jazzy/lifecycle_msgs
	ros-jazzy/rcl
	ros-jazzy/rclc
	ros-jazzy/rclc_lifecycle
	ros-jazzy/rclc_parameter
	ros-jazzy/std_msgs
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
