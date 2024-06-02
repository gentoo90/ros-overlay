# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/cartographer-project/cartographer_ros"
SRC_URI="https://github.com/ros2-gbp/cartographer_ros-release/archive/release/jazzy/${PN}/2.0.9003-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/cartographer
	ros-jazzy/cartographer_ros
	ros-jazzy/cartographer_ros_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rviz_common
	ros-jazzy/rviz_ogre_vendor
	ros-jazzy/rviz_rendering
	dev-cpp/abseil-cpp
	dev-cpp/eigen
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
