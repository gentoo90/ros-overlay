# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This  library contains wrappers for generating floating point values, integ[...]"
HOMEPAGE="http://ros.org/wiki/random_numbers"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.1-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost[threads]
	dev-libs/boost[threads]
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_cmake
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
