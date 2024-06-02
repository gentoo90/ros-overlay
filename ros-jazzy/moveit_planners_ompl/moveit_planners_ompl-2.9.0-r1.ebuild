# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="MoveIt interface to OMPL"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/moveit_common
	ros-jazzy/moveit_core
	ros-jazzy/moveit_msgs
	ros-jazzy/moveit_ros_planning
	ros-jazzy/ompl
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_ros
	sys-libs/libomp
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/moveit_resources_fanuc_moveit_config
		ros-jazzy/moveit_resources_panda_moveit_config
		ros-jazzy/moveit_resources_pr2_description
		ros-jazzy/tf2_eigen
		dev-cpp/eigen
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/eigen3_cmake_module
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
