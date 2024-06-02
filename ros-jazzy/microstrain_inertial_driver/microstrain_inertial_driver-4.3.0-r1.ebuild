# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The ros_mscl package provides a driver for the LORD/Microstrain inertial pr[...]"
HOMEPAGE="https://github.com/LORD-MicroStrain/microstrain_inertial"
SRC_URI="https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/jazzy/${PN}/4.3.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/diagnostic_aggregator
	ros-jazzy/diagnostic_updater
	ros-jazzy/geometry_msgs
	ros-jazzy/lifecycle_msgs
	ros-jazzy/microstrain_inertial_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/nmea_msgs
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/rtcm_msgs
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	ros-jazzy/tf2
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cpplint
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ros_environment
	ros-jazzy/rosidl_default_generators
	app-misc/jq
	dev-cpp/eigen
	dev-vcs/git
	net-misc/curl
	sci-geosciences/GeographicLib
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
