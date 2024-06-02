# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Binary releases of Leo Rover firmware and related utilities"
HOMEPAGE="http://wiki.ros.org/leo_fw"
SRC_URI="https://github.com/ros2-gbp/leo_robot-release/archive/release/jazzy/${PN}/1.4.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/geometry_msgs
	ros-jazzy/leo_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rclpy
	ros-jazzy/ros2cli
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	dev-python/dbus-python
	dev-python/numpy
	dev-python/pyyaml
	dev-python/whichcraft
	test? (
		ros-jazzy/ament_cmake_black
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_mypy
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
	dev-cpp/yaml-cpp
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
