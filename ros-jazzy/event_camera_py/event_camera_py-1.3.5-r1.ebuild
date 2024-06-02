# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Python access for event_camera_msgs."
HOMEPAGE="https://index.ros.org/p/event_camera_py/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.3.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/event_camera_codecs
	ros-jazzy/event_camera_msgs
	ros-jazzy/pybind11_vendor
	ros-jazzy/ros_environment
	ros-jazzy/rpyutils
	test? (
		ros-jazzy/ament_cmake_clang_format
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/rclpy
		ros-jazzy/rosbag2_py
		ros-jazzy/rosbag2_storage_default_plugins
		ros-jazzy/rosidl_runtime_py
		dev-python/numpy
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_auto
	ros-jazzy/ament_cmake_python
	ros-jazzy/ament_cmake_ros
	ros-jazzy/python_cmake_module
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
