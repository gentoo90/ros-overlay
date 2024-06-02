# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="This package  provides the STOMP \(Stochastic Trajectory Optimization for M[...]"
HOMEPAGE="http://wiki.ros.org/stomp"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.1.2-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	dev-cpp/eigen
	dev-libs/console_bridge
	test? (
		dev-cpp/gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ros_industrial_cmake_boilerplate
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
