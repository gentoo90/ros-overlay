# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="RViz visualizations for polygons"
HOMEPAGE="https://index.ros.org/p/polygon_rviz_plugins/#jazzy"
SRC_URI="https://github.com/ros2-gbp/polygon_ros-release/archive/release/jazzy/${PN}/1.0.2-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/color_util
	ros-jazzy/geometry_msgs
	ros-jazzy/pluginlib
	ros-jazzy/polygon_msgs
	ros-jazzy/polygon_utils
	ros-jazzy/rviz_common
	ros-jazzy/std_msgs
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
