# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="RTAB-Map\'s standalone library. RTAB-Map is a RGB-D SLAM approach with real[...]"
HOMEPAGE="http://introlab.github.io/rtabmap"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.21.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/cv_bridge
	ros-jazzy/gtsam
	ros-jazzy/libg2o
	ros-jazzy/libpointmatcher
	ros-jazzy/octomap
	ros-jazzy/qt_gui_cpp
	dev-db/sqlite:3
	sci-libs/pcl
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	dev-build/cmake
	sci-libs/proj
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
