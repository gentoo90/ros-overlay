# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Vendor package for the DART physics engine v6.13.2"
HOMEPAGE="https://dartsim.github.io/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.0.2-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD-2 )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	app-arch/lz4
	dev-cpp/eigen
	dev-games/ode
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost
	dev-libs/libfmt
	dev-libs/tinyxml2
	dev-libs/urdfdom
	media-libs/assimp
	sci-libs/fcl
	sci-libs/libccd
	sci-physics/bullet
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
