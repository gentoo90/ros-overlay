# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The swri_transform_util package contains utility functions and classes for\[...]"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/${PN}/3.6.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/cv_bridge
	ros-jazzy/diagnostic_msgs
	ros-jazzy/diagnostic_updater
	ros-jazzy/geographic_msgs
	ros-jazzy/geometry_msgs
	ros-jazzy/gps_msgs
	ros-jazzy/marti_nav_msgs
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rclpy
	ros-jazzy/sensor_msgs
	ros-jazzy/swri_math_util
	ros-jazzy/swri_roscpp
	ros-jazzy/tf2
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	dev-cpp/yaml-cpp
	dev-libs/boost[python]
	dev-python/numpy
	sci-libs/geos
	sci-libs/proj
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
