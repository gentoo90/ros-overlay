# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="An example package with MoveIt2 configurations for UR robots."
HOMEPAGE="https://index.ros.org/p/ur_moveit_config/#jazzy"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/jazzy/${PN}/2.4.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/moveit_kinematics
	ros-jazzy/moveit_planners_ompl
	ros-jazzy/moveit_ros_move_group
	ros-jazzy/moveit_ros_visualization
	ros-jazzy/moveit_servo
	ros-jazzy/moveit_simple_controller_manager
	ros-jazzy/rviz2
	ros-jazzy/ur_description
	ros-jazzy/urdf
	ros-jazzy/warehouse_ros_sqlite
	ros-jazzy/xacro
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
