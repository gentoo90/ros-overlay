# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This library provides functionality to simplify working with the\
    navig[...]"
HOMEPAGE="https://index.ros.org/p/swri_route_util/#jazzy"
SRC_URI="https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/${PN}/3.6.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/marti_common_msgs
	ros-jazzy/marti_nav_msgs
	ros-jazzy/rclcpp
	ros-jazzy/swri_geometry_util
	ros-jazzy/swri_math_util
	ros-jazzy/swri_roscpp
	ros-jazzy/swri_transform_util
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/visualization_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
