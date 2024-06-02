# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Simple library for using the \`rclpy/rclcpp\` action libraries"
HOMEPAGE="https://index.ros.org/p/simple_actions/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.3.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/action_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_action
	ros-jazzy/rclpy
	test? (
		ros-jazzy/action_tutorials_interfaces
		ros-jazzy/ament_cmake_clang_format
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_cmake_flake8
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_pep257
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
