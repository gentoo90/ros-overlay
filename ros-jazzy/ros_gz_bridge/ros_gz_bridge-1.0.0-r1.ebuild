# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Bridge communication between ROS and Gazebo Transport"
HOMEPAGE="https://index.ros.org/p/ros_gz_bridge/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros_ign-release/archive/release/jazzy/${PN}/1.0.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/actuator_msgs
	ros-jazzy/geometry_msgs
	ros-jazzy/gps_msgs
	ros-jazzy/gz_msgs_vendor
	ros-jazzy/gz_transport_vendor
	ros-jazzy/nav_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/ros_gz_interfaces
	ros-jazzy/rosgraph_msgs
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/tf2_msgs
	ros-jazzy/trajectory_msgs
	ros-jazzy/vision_msgs
	ros-jazzy/yaml_cpp_vendor
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/launch_ros
		ros-jazzy/launch_testing
		ros-jazzy/launch_testing_ament_cmake
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_pycommon
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
