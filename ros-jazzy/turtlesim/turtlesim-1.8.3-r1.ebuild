# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="turtlesim is a tool made for teaching ROS and ROS packages."
HOMEPAGE="http://www.ros.org/wiki/turtlesim"
SRC_URI="https://github.com/ros2-gbp/ros_tutorials-release/archive/release/jazzy/${PN}/1.8.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/geometry_msgs
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_action
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
	dev-qt/qtcore:5
	dev-qt/qtcore:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
