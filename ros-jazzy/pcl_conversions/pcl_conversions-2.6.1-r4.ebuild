# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides conversions from PCL data types and ROS message types"
HOMEPAGE="http://wiki.ros.org/pcl_conversions"
SRC_URI="https://github.com/ros2-gbp/perception_pcl-release/archive/release/jazzy/${PN}/2.6.1-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/message_filters
	ros-jazzy/pcl_msgs
	ros-jazzy/rclcpp
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	dev-cpp/eigen
	sci-libs/pcl
	sci-libs/pcl
	test? (
		ros-jazzy/ament_cmake_gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
