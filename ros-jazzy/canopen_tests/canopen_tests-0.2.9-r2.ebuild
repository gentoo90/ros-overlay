# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Package with tests for ros2_canopen"
HOMEPAGE="https://index.ros.org/p/canopen_tests/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/${PN}/0.2.9-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/canopen_402_driver
	ros-jazzy/canopen_core
	ros-jazzy/canopen_fake_slaves
	ros-jazzy/canopen_proxy_driver
	ros-jazzy/canopen_ros2_controllers
	ros-jazzy/controller_manager
	ros-jazzy/forward_command_controller
	ros-jazzy/joint_state_broadcaster
	ros-jazzy/joint_trajectory_controller
	ros-jazzy/robot_state_publisher
	ros-jazzy/xacro
	test? (
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/lely_core_libraries
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
