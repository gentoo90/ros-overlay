# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Package for managing traffic in the Robotics Middleware Framework"
HOMEPAGE="https://index.ros.org/p/rmf_traffic/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/3.3.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rmf_utils
	dev-cpp/eigen
	sci-libs/libccd
	test? (
		ros-jazzy/ament_cmake_catch2
		ros-jazzy/ament_cmake_uncrustify
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/eigen3_cmake_module
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
