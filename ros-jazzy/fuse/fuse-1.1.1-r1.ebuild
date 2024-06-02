# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The fuse metapackage."
HOMEPAGE="https://index.ros.org/p/fuse/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.1.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/fuse_constraints
	ros-jazzy/fuse_core
	ros-jazzy/fuse_doc
	ros-jazzy/fuse_graphs
	ros-jazzy/fuse_models
	ros-jazzy/fuse_msgs
	ros-jazzy/fuse_optimizers
	ros-jazzy/fuse_publishers
	ros-jazzy/fuse_variables
	ros-jazzy/fuse_viz
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
