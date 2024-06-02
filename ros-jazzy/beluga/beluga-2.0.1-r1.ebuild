# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="A generic MCL library for ROS2."
HOMEPAGE="https://index.ros.org/p/beluga/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/sophus
	dev-cpp/eigen
	dev-cpp/range-v3
	dev-cpp/tbb
	sci-libs/hdf5
	test? (
		dev-cpp/benchmark
		dev-cpp/gtest
		dev-cpp/gtest
		sys-devel/clang
		sys-devel/clang
	)
"
DEPEND="${RDEPEND}
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
