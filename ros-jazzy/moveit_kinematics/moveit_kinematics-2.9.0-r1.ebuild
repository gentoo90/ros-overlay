# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Package for all inverse kinematics solvers in MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/class_loader
	ros-jazzy/generate_parameter_library
	ros-jazzy/moveit_common
	ros-jazzy/moveit_core
	ros-jazzy/moveit_msgs
	ros-jazzy/moveit_ros_planning
	ros-jazzy/orocos_kdl_vendor
	ros-jazzy/pluginlib
	ros-jazzy/rsl
	ros-jazzy/tf2
	ros-jazzy/tf2_kdl
	ros-jazzy/urdfdom
	dev-cpp/eigen
	dev-python/lxml
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/launch_param_builder
		ros-jazzy/moveit_configs_utils
		ros-jazzy/moveit_resources_fanuc_description
		ros-jazzy/moveit_resources_fanuc_moveit_config
		ros-jazzy/moveit_resources_panda_description
		ros-jazzy/moveit_resources_panda_moveit_config
		ros-jazzy/ros_testing
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
