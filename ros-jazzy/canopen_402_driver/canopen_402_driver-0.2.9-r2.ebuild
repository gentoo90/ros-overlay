# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Driiver for devices implementing CIA402 profile"
HOMEPAGE="https://index.ros.org/p/canopen_402_driver/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/${PN}/0.2.9-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="LGPL-v3"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/canopen_base_driver
	ros-jazzy/canopen_core
	ros-jazzy/canopen_interfaces
	ros-jazzy/canopen_proxy_driver
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/sensor_msgs
	ros-jazzy/std_srvs
	dev-libs/boost[python]
	test? (
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
