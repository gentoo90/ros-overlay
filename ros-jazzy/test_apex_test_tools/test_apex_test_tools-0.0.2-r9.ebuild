# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Test package, which uses things exported by apex_test_tools"
HOMEPAGE="https://index.ros.org/p/test_apex_test_tools/#jazzy"
SRC_URI="https://github.com/ros2-gbp/apex_test_tools-release/archive/release/jazzy/${PN}/0.0.2-9.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/apex_test_tools
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
