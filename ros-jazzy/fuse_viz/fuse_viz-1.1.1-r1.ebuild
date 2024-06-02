# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The fuse_viz package provides visualization tools for fuse."
HOMEPAGE="https://index.ros.org/p/fuse_viz/#jazzy"
SRC_URI="https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/${PN}/1.1.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/fuse_constraints
	ros-jazzy/fuse_core
	ros-jazzy/fuse_msgs
	ros-jazzy/fuse_variables
	ros-jazzy/geometry_msgs
	ros-jazzy/rviz_common
	ros-jazzy/rviz_rendering
	ros-jazzy/tf2_geometry_msgs
	dev-cpp/eigen
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	dev-qt/qtcore:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
