# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="ViSP standing for Visual Servoing Platform is a modular cross\
    platform[...]"
HOMEPAGE="http://www.ros.org/wiki/visp"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/3.5.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="GPL-2.0-only"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	dev-cpp/eigen
	dev-libs/libxml2
	media-libs/libpng
	media-libs/libv4l
	media-libs/opencv
	virtual/jpeg
	virtual/lapack
	x11-libs/libX11
"
DEPEND="${RDEPEND}
	app-arch/bzip2
	app-text/doxygen
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
