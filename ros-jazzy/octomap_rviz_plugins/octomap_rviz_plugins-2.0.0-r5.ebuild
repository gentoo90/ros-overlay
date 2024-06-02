# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A set of plugins for displaying occupancy information decoded from binary o[...]"
HOMEPAGE="http://ros.org/wiki/octomap_rviz_plugins"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.0-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/octomap
	ros-jazzy/octomap_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rviz_common
	ros-jazzy/rviz_default_plugins
	ros-jazzy/rviz_rendering
	dev-qt/qtcore:5
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
	dev-qt/qtwidgets:5
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
