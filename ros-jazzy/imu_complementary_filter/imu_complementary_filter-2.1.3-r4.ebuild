# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Filter which fuses angular velocities, accelerations, and \(optionally\) ma[...]"
HOMEPAGE="http://www.mdpi.com/1424-8220/15/8/19302"
SRC_URI="https://github.com/ros2-gbp/imu_tools-release/archive/release/jazzy/${PN}/2.1.3-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/geometry_msgs
	ros-jazzy/message_filters
	ros-jazzy/rclcpp
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
