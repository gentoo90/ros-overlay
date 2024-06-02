# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="An extension of the Flexible Collision Library."
HOMEPAGE="https://github.com/humanoid-path-planner/hpp-fcl"
SRC_URI="https://github.com/ros2-gbp/hpp_fcl-release/archive/release/jazzy/${PN}/2.4.4-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/eigenpy
	ros-jazzy/octomap
	dev-cpp/eigen
	dev-lang/python
	dev-libs/boost[python]
	dev-python/numpy
	media-libs/assimp
"
DEPEND="${RDEPEND}
	app-text/doxygen
	dev-build/cmake
	dev-python/lxml
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
