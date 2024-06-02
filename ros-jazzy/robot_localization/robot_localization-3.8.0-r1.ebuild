# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides nonlinear state estimation through sensor fusion of an abritrary n[...]"
HOMEPAGE="http://ros.org/wiki/robot_localization"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/3.8.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/angles
	ros-jazzy/diagnostic_msgs
	ros-jazzy/diagnostic_updater
	ros-jazzy/geographic_msgs
	ros-jazzy/geometry_msgs
	ros-jazzy/message_filters
	ros-jazzy/nav_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rmw_implementation
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	ros-jazzy/tf2
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/yaml_cpp_vendor
	dev-cpp/eigen
	dev-libs/boost
	sci-geosciences/GeographicLib
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/builtin_interfaces
		ros-jazzy/launch_ros
		ros-jazzy/launch_testing_ament_cmake
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/builtin_interfaces
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
