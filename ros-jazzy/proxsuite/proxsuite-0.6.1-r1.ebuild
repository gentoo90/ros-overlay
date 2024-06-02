# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="The Advanced Proximal Optimization Toolbox"
HOMEPAGE="https://simple-robotics.github.io/proxsuite"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.6.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	dev-cpp/eigen
	dev-python/numpy
	sci-libs/scipy
	test? (
		sci-libs/matio
	)
"
DEPEND="${RDEPEND}
	app-text/doxygen
	dev-build/cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
