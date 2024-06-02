# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/cartographer-project/cartographer"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.9003-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	dev-cpp/abseil-cpp
	dev-cpp/eigen
	dev-cpp/gflags
	dev-cpp/glog
	dev-lang/lua:5.2
	dev-libs/boost
	dev-libs/protobuf
	sci-libs/ceres-solver[sparse,lapack]
	x11-libs/cairo
"
DEPEND="${RDEPEND}
	dev-build/cmake
	dev-cpp/gtest
	dev-cpp/gtest
	dev-python/sphinx
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
