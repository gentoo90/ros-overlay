# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Node/components to transform sensor_msgs::Imu data from one frame into another."
HOMEPAGE="http://ros.org/wiki/imu_transformer"
SRC_URI="https://github.com/ros2-gbp/imu_pipeline-release/archive/release/jazzy/${PN}/0.5.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/message_filters
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/tf2_sensor_msgs
	test? (
		ros-jazzy/geometry_msgs
		ros-jazzy/tf2_geometry_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
