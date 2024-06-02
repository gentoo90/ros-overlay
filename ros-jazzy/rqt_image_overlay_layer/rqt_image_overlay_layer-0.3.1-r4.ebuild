# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides an rqt_image_overlay_layer plugin interface, and a template impele[...]"
HOMEPAGE="https://index.ros.org/p/rqt_image_overlay_layer/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rqt_image_overlay-release/archive/release/jazzy/${PN}/0.3.1-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/message_filters
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rcpputils
	ros-jazzy/rosidl_runtime_cpp
	dev-qt/qtcore:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
	test? (
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
