# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A ROS camera driver that uses gstreamer to connect to\
    devices such as [...]"
HOMEPAGE="https://index.ros.org/p/gscam/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.2-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0-License"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/camera_calibration_parsers
	ros-jazzy/camera_info_manager
	ros-jazzy/class_loader
	ros-jazzy/cv_bridge
	ros-jazzy/image_transport
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/sensor_msgs
	media-libs/gst-plugins-base:1.0
	media-libs/gstreamer:1.0
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
