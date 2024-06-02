# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Python API for rosbag2"
HOMEPAGE="https://index.ros.org/p/rosbag2_py/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/${PN}/0.26.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/pybind11_vendor
	ros-jazzy/rclpy
	ros-jazzy/rosbag2_compression
	ros-jazzy/rosbag2_cpp
	ros-jazzy/rosbag2_storage
	ros-jazzy/rosbag2_transport
	ros-jazzy/rpyutils
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/rcl_interfaces
		ros-jazzy/rosbag2_compression_zstd
		ros-jazzy/rosbag2_storage_default_plugins
		ros-jazzy/rosbag2_test_common
		ros-jazzy/rosidl_runtime_py
		ros-jazzy/std_msgs
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_python
	ros-jazzy/ament_cmake_ros
	ros-jazzy/python_cmake_module
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
