# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS2 driver for flir spinnaker sdk"
HOMEPAGE="https://index.ros.org/p/spinnaker_camera_driver/#jazzy"
SRC_URI="https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/jazzy/${PN}/2.0.15-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2 BSD )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/camera_info_manager
	ros-jazzy/flir_camera_msgs
	ros-jazzy/image_transport
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	dev-cpp/yaml-cpp
	virtual/ffmpeg
	virtual/libusb:1
	test? (
		ros-jazzy/ament_cmake_clang_format
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_ros
	app-arch/dpkg
	dev-python/distro
	net-misc/curl
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
