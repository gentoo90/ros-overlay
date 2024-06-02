# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Python binding for MoveIt 2"
HOMEPAGE="https://index.ros.org/p/moveit_py/#jazzy"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/geometry_msgs
	ros-jazzy/moveit_core
	ros-jazzy/moveit_ros_planning
	ros-jazzy/moveit_ros_planning_interface
	ros-jazzy/octomap_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclpy
	test? (
		ros-jazzy/ament_cmake_pytest
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/pybind11_vendor
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
