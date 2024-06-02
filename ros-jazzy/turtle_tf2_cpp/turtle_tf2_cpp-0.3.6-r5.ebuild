# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="turtle_tf2_cpp demonstrates how to write a ROS2 C++ tf2 broadcaster and lis[...]"
HOMEPAGE="https://index.ros.org/p/turtle_tf2_cpp/#jazzy"
SRC_URI="https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/jazzy/${PN}/0.3.6-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/message_filters
	ros-jazzy/rclcpp
	ros-jazzy/tf2
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/turtlesim
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
