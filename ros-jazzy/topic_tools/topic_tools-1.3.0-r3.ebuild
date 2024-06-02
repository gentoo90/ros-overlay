# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Tools for directing, throttling, selecting, and otherwise messing with\
   [...]"
HOMEPAGE="https://index.ros.org/p/topic_tools/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.3.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rclpy
	ros-jazzy/ros2cli
	ros-jazzy/rosidl_runtime_py
	ros-jazzy/topic_tools_interfaces
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/rosidl_runtime_py
		ros-jazzy/std_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_auto
	ros-jazzy/ament_cmake_python
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
