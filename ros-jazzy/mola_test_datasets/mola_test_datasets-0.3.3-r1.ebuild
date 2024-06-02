# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Small SLAM dataset extracts used for demos or unit tests in the rest of MOL[...]"
HOMEPAGE="https://github.com/MOLAorg/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.3.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( BSD BSD CC-BY-NC-SA-3.0 CC-BY-3.0 CC-BY-3.0 )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_gtest
	ros-jazzy/ament_cmake_xmllint
	ros-jazzy/ros_environment
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
