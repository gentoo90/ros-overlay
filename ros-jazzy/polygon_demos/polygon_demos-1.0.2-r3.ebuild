# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Demo of polygon_rviz_plugins"
HOMEPAGE="https://index.ros.org/p/polygon_demos/#jazzy"
SRC_URI="https://github.com/ros2-gbp/polygon_ros-release/archive/release/jazzy/${PN}/1.0.2-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/angles
	ros-jazzy/color_util
	ros-jazzy/geometry_msgs
	ros-jazzy/polygon_msgs
	ros-jazzy/polygon_rviz_plugins
	ros-jazzy/polygon_utils
	ros-jazzy/rclcpp
	ros-jazzy/rviz2
	ros-jazzy/rviz_common
	ros-jazzy/rviz_default_plugins
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
