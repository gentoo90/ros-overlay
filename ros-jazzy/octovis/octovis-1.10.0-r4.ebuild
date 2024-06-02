# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="octovis is visualization tool for the OctoMap library based on Qt and libQG[...]"
HOMEPAGE="http://octomap.github.io"
SRC_URI="https://github.com/ros2-gbp/octomap-release/archive/release/jazzy/${PN}/1.10.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="GPL-2.0-only"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/octomap
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	virtual/opengl
	x11-libs/libQGLViewer
"
DEPEND="${RDEPEND}
	dev-build/cmake
	dev-qt/qtopengl:5
	x11-libs/libQGLViewer
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
