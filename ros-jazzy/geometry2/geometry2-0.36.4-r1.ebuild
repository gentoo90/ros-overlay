# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A metapackage to bring in the default packages second generation Transform [...]"
HOMEPAGE="http://www.ros.org/wiki/geometry2"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.36.4-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/tf2
	ros-jazzy/tf2_bullet
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_eigen_kdl
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_kdl
	ros-jazzy/tf2_msgs
	ros-jazzy/tf2_py
	ros-jazzy/tf2_ros
	ros-jazzy/tf2_sensor_msgs
	ros-jazzy/tf2_tools
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
