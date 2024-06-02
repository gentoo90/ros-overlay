# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="MoveIt Setup Steps for ROS 2 Control"
HOMEPAGE="https://index.ros.org/p/moveit_setup_controllers/#jazzy"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/moveit_setup_framework
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	test? (
		ros-jazzy/ament_clang_format
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_lint_auto
		ros-jazzy/moveit_configs_utils
		ros-jazzy/moveit_resources_fanuc_moveit_config
		ros-jazzy/moveit_resources_panda_moveit_config
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
