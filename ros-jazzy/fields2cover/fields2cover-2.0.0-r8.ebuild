# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Robust and efficient coverage paths for autonomous agricultural vehicles.\
[...]"
HOMEPAGE="https://index.ros.org/p/fields2cover/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.0-8.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	=dev-lang/python-3*
	dev-cpp/abseil-cpp
	dev-cpp/eigen
	dev-cpp/gtest
	dev-cpp/tbb
	dev-lang/python
	dev-lang/python[tk]
	dev-libs/boost[python]
	dev-libs/protobuf
	dev-libs/tinyxml2
	dev-python/matplotlib
	dev-vcs/git
	sci-libs/gdal
	test? (
		dev-cpp/gtest
		dev-util/lcov
	)
"
DEPEND="${RDEPEND}
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
