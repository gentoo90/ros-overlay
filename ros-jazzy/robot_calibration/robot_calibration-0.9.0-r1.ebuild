# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Calibrate a Robot"
HOMEPAGE="http://ros.org/wiki/robot_calibration"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/camera_calibration_parsers
	ros-jazzy/control_msgs
	ros-jazzy/cv_bridge
	ros-jazzy/geometric_shapes
	ros-jazzy/geometry_msgs
	ros-jazzy/kdl_parser
	ros-jazzy/moveit_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_action
	ros-jazzy/robot_calibration_msgs
	ros-jazzy/rosbag2_cpp
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/tinyxml2_vendor
	ros-jazzy/visualization_msgs
	dev-cpp/gflags
	dev-cpp/yaml-cpp
	dev-libs/protobuf
	dev-libs/tinyxml2
	sci-libs/ceres-solver[sparse,lapack]
	sci-libs/orocos_kdl
	sci-libs/suitesparse
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/launch
		ros-jazzy/launch_ros
		ros-jazzy/launch_testing
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-cpp/eigen
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
