# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="urg_node"
HOMEPAGE="http://ros.org/wiki/urg_node"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.1.1-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/diagnostic_updater
	ros-jazzy/laser_proc
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rosidl_default_generators
	ros-jazzy/sensor_msgs
	ros-jazzy/std_srvs
	ros-jazzy/urdf
	ros-jazzy/urg_c
	ros-jazzy/urg_node_msgs
	dev-libs/boost
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
