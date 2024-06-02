# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="An rqt plugin to display overlays for custom msgs on an image using plugins."
HOMEPAGE="https://index.ros.org/p/rqt_image_overlay/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.3.1-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/image_transport
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/ros_image_to_qimage
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_cpp
	ros-jazzy/rqt_image_overlay_layer
	dev-qt/qtcore:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/compressed_image_transport
		ros-jazzy/std_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
