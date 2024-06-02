# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS device driver for Velodyne 3D LIDARs."
HOMEPAGE="http://www.ros.org/wiki/velodyne_driver"
SRC_URI="https://github.com/ros2-gbp/velodyne-release/archive/release/jazzy/${PN}/2.3.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/diagnostic_msgs
	ros-jazzy/diagnostic_updater
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/tf2_ros
	ros-jazzy/velodyne_msgs
	net-libs/libpcap
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
