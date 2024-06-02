# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides controllers that use the speed scaling interface of Universal Robots."
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/issues"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/jazzy/${PN}/2.4.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/angles
	ros-jazzy/controller_interface
	ros-jazzy/joint_trajectory_controller
	ros-jazzy/lifecycle_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/rcutils
	ros-jazzy/realtime_tools
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	ros-jazzy/ur_dashboard_msgs
	ros-jazzy/ur_msgs
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
