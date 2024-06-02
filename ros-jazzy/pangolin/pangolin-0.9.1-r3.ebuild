# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Pangolin is a set of lightweight and portable utility libraries for prototy[...]"
HOMEPAGE="https://index.ros.org/p/pangolin/#jazzy"
SRC_URI="https://github.com/ros2-gbp/Pangolin-release/archive/release/jazzy/${PN}/0.9.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	=dev-lang/python-3*
	dev-libs/wayland
	media-libs/glew
	media-libs/libjpeg-turbo
	media-libs/libpng
	x11-libs/libxkbcommon
"
DEPEND="${RDEPEND}
	dev-build/cmake
	dev-cpp/eigen
	dev-libs/wayland
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
