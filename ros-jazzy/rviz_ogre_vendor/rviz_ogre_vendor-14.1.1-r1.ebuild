# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProj[...]"
HOMEPAGE="https://www.ogre3d.org/"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/jazzy/${PN}/14.1.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 MIT )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	media-libs/freetype
	media-libs/freetype
	virtual/opengl
	x11-libs/libX11
	x11-libs/libXaw
	x11-libs/libXrandr
	test? (
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_vendor_package
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
