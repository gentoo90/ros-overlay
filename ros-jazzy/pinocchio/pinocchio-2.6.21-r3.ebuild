# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="A fast and flexible implementation of Rigid Body Dynamics algorithms and th[...]"
HOMEPAGE="https://github.com/stack-of-tasks/pinocchio"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.6.21-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/eigenpy
	ros-jazzy/hpp-fcl
	dev-cpp/eigen
	dev-lang/python
	dev-libs/boost[python]
	dev-libs/urdfdom
	dev-python/numpy
"
DEPEND="${RDEPEND}
	app-text/doxygen
	dev-build/cmake
	dev-vcs/git
	sys-devel/clang
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
