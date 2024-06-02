# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Helper functions for displaying and debugging MoveIt data in Rviz via publi[...]"
HOMEPAGE="https://github.com/ros-planning/moveit_visual_tools"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/4.1.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/graph_msgs
	ros-jazzy/moveit_common
	ros-jazzy/moveit_core
	ros-jazzy/moveit_ros_planning
	ros-jazzy/rclcpp
	ros-jazzy/rviz_visual_tools
	ros-jazzy/std_msgs
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_ros
	ros-jazzy/trajectory_msgs
	ros-jazzy/visualization_msgs
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
