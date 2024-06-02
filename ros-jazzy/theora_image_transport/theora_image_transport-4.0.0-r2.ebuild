# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Theora_image_transport provides a plugin to image_transport for\
    transp[...]"
HOMEPAGE="http://www.ros.org/wiki/image_transport_plugins"
SRC_URI="https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/jazzy/${PN}/4.0.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/cv_bridge
	ros-jazzy/image_transport
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rcutils
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	media-libs/libogg
	media-libs/libtheora
	media-libs/opencv
	test? (
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
