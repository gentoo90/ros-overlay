# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Extra nodes and plugins for <a href=\"http://wiki.ros.org/mavros\">MAVROS</a>."
HOMEPAGE="http://wiki.ros.org/mavros_extras"
SRC_URI="https://github.com/ros2-gbp/mavros-release/archive/release/jazzy/${PN}/2.6.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( GPL-3.0-only LGPL-3.0-only BSD )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/diagnostic_msgs
	ros-jazzy/diagnostic_updater
	ros-jazzy/eigen_stl_containers
	ros-jazzy/geographic_msgs
	ros-jazzy/geometry_msgs
	ros-jazzy/libmavconn
	ros-jazzy/mavlink
	ros-jazzy/mavros
	ros-jazzy/mavros_msgs
	ros-jazzy/message_filters
	ros-jazzy/nav_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rcpputils
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_ros
	ros-jazzy/trajectory_msgs
	ros-jazzy/urdf
	ros-jazzy/visualization_msgs
	ros-jazzy/yaml_cpp_vendor
	dev-cpp/eigen
	dev-cpp/yaml-cpp
	sci-geosciences/GeographicLib
	sci-geosciences/GeographicLib
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		dev-cpp/gtest
		dev-cpp/gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
	ros-jazzy/angles
	ros-jazzy/eigen3_cmake_module
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
