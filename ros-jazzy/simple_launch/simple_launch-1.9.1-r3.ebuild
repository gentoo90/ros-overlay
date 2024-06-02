# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Python helper class for the ROS 2 launch system"
HOMEPAGE="https://index.ros.org/p/simple_launch/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.9.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/xacro
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
