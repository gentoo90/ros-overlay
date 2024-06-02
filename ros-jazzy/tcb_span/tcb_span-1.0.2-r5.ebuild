# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Implementation of C++20\'s std::span"
HOMEPAGE="https://github.com/tcbrindle/span"
SRC_URI="https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/jazzy/${PN}/1.0.2-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSL-1.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	test? (
		ros-jazzy/ament_cmake_gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
