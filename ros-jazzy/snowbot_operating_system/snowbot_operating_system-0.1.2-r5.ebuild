# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The weather outside is frightful"
HOMEPAGE="https://index.ros.org/p/snowbot_operating_system/#jazzy"
SRC_URI="https://github.com/ros2-gbp/snowbot_release/archive/release/jazzy/${PN}/0.1.2-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_cmake_ros
	ros-jazzy/geometry_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rviz_common
	ros-jazzy/rviz_rendering
	test? (
		ros-jazzy/ament_cmake_clang_format
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
