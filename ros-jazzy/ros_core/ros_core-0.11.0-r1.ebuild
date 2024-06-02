# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A package to aggregate the packages required to use publish / subscribe, se[...]"
HOMEPAGE="https://index.ros.org/p/ros_core/#jazzy"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/jazzy/${PN}/0.11.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_auto
	ros-jazzy/ament_cmake_gmock
	ros-jazzy/ament_cmake_gtest
	ros-jazzy/ament_cmake_pytest
	ros-jazzy/ament_cmake_ros
	ros-jazzy/ament_index_cpp
	ros-jazzy/ament_index_python
	ros-jazzy/ament_lint_auto
	ros-jazzy/ament_lint_common
	ros-jazzy/class_loader
	ros-jazzy/common_interfaces
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/launch_testing
	ros-jazzy/launch_testing_ament_cmake
	ros-jazzy/launch_testing_ros
	ros-jazzy/launch_xml
	ros-jazzy/launch_yaml
	ros-jazzy/pluginlib
	ros-jazzy/rcl_lifecycle
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_action
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/rclpy
	ros-jazzy/ros2cli_common_extensions
	ros-jazzy/ros2launch
	ros-jazzy/ros_environment
	ros-jazzy/rosidl_default_generators
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/sros2
	ros-jazzy/sros2_cmake
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
