# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Enhanced tools for benchmarks in MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/launch_param_builder
	ros-jazzy/moveit_common
	ros-jazzy/moveit_configs_utils
	ros-jazzy/moveit_ros_planning
	ros-jazzy/moveit_ros_warehouse
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/tf2_eigen
	dev-libs/boost
	dev-libs/boost
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/moveit_core
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
