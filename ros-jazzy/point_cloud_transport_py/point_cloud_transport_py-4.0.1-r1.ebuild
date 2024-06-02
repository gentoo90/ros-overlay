# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Python API for point_cloud_transport"
HOMEPAGE="https://github.com/ros-perception/point_cloud_transport"
SRC_URI="https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/jazzy/${PN}/4.0.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/pluginlib
	ros-jazzy/point_cloud_transport
	ros-jazzy/pybind11_vendor
	ros-jazzy/rclcpp
	ros-jazzy/rpyutils
	ros-jazzy/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_python
	ros-jazzy/ament_cmake_ros
	ros-jazzy/python_cmake_module
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
