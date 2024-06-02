# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A visualizer for trajectories in rmf schedule"
HOMEPAGE="https://index.ros.org/p/rmf_visualization_schedule/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rmf_visualization-release/archive/release/jazzy/${PN}/2.2.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/geometry_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rmf_traffic
	ros-jazzy/rmf_traffic_msgs
	ros-jazzy/rmf_traffic_ros2
	ros-jazzy/rmf_visualization_msgs
	ros-jazzy/rosidl_default_generators
	ros-jazzy/visualization_msgs
	dev-cpp/eigen
	dev-cpp/websocketpp
	dev-libs/boost
	dev-libs/openssl
	test? (
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/rmf_utils
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
