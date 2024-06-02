# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This package contains a class for converting from a 2D laser scan as define[...]"
HOMEPAGE="http://ros.org/wiki/laser_geometry"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.7.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclcpp
	ros-jazzy/rclpy
	ros-jazzy/sensor_msgs
	ros-jazzy/sensor_msgs_py
	ros-jazzy/tf2
	dev-cpp/eigen
	dev-python/numpy
	test? (
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_cmake_cpplint
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/python_cmake_module
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/eigen3_cmake_module
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
