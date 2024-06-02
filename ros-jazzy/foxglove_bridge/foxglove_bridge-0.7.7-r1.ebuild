# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS Foxglove Bridge"
HOMEPAGE="https://github.com/foxglove/ros-foxglove-bridge"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.7.7-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/resource_retriever
	ros-jazzy/rosgraph_msgs
	dev-libs/openssl
	sys-libs/zlib
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/std_msgs
		ros-jazzy/std_srvs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ros_environment
	dev-cpp/asio
	dev-cpp/nlohmann_json
	dev-cpp/websocketpp
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
