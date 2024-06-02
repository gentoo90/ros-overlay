# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ffmpeg_image_transport provides a plugin to image_transport for\
    transp[...]"
HOMEPAGE="http://www.ros.org/wiki/image_transport_plugins"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.0.1-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/cv_bridge
	ros-jazzy/ffmpeg_image_transport_msgs
	ros-jazzy/image_transport
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rcutils
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	media-libs/libogg
	media-libs/opencv
	media-video/ffmpeg
	virtual/ffmpeg
	test? (
		ros-jazzy/ament_cmake_clang_format
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_ros
	ros-jazzy/ros_environment
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
