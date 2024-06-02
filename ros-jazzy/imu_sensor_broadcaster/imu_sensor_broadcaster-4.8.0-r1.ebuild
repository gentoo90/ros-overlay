# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Controller to publish readings of IMU sensors."
HOMEPAGE="https://index.ros.org/p/imu_sensor_broadcaster/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/${PN}/4.8.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/backward_ros
	ros-jazzy/controller_interface
	ros-jazzy/generate_parameter_library
	ros-jazzy/hardware_interface
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/realtime_tools
	ros-jazzy/sensor_msgs
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/controller_manager
		ros-jazzy/hardware_interface_testing
		ros-jazzy/ros2_control_test_assets
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
