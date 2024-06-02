# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Lanelet2 core module"
HOMEPAGE="https://github.com/fzi-forschungszentrum-informatik/lanelet2.git"
SRC_URI="https://github.com/ros2-gbp/lanelet2-release/archive/release/jazzy/${PN}/1.2.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	dev-cpp/eigen
	dev-libs/boost[python]
	test? (
		dev-cpp/gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_core
	ros-jazzy/mrt_cmake_modules
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
