# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/cartographer-project/cartographer_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.9003-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/cartographer
	ros-jazzy/cartographer_ros_msgs
	ros-jazzy/geometry_msgs
	ros-jazzy/launch
	ros-jazzy/nav_msgs
	ros-jazzy/pcl_conversions
	ros-jazzy/rclcpp
	ros-jazzy/robot_state_publisher
	ros-jazzy/rosbag2_cpp
	ros-jazzy/rosbag2_storage
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/urdf
	ros-jazzy/visualization_msgs
	dev-cpp/abseil-cpp
	dev-cpp/eigen
	dev-cpp/gflags
	dev-cpp/glog
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ros_environment
	dev-cpp/gtest
	dev-python/sphinx
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
