# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Description of controller_manager"
HOMEPAGE="https://index.ros.org/p/controller_manager/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/${PN}/4.11.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/backward_ros
	ros-jazzy/controller_interface
	ros-jazzy/controller_manager_msgs
	ros-jazzy/diagnostic_updater
	ros-jazzy/hardware_interface
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rcpputils
	ros-jazzy/realtime_tools
	ros-jazzy/ros2_control_test_assets
	ros-jazzy/ros2param
	ros-jazzy/ros2run
	ros-jazzy/std_msgs
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/hardware_interface_testing
		ros-jazzy/ros2_control_test_assets
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_gen_version_h
	ros-jazzy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"