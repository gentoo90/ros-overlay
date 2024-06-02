# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="C++ Interface for defining setup steps for MoveIt Setup Assistant"
HOMEPAGE="https://index.ros.org/p/moveit_setup_framework/#jazzy"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/moveit_common
	ros-jazzy/moveit_core
	ros-jazzy/moveit_ros_planning
	ros-jazzy/moveit_ros_visualization
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rviz_common
	ros-jazzy/rviz_rendering
	ros-jazzy/srdfdom
	ros-jazzy/urdf
	dev-libs/libfmt
	test? (
		ros-jazzy/ament_clang_format
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
