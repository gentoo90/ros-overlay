# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Proxy implementation of the ROS 2 Middleware Interface."
HOMEPAGE="https://index.ros.org/p/rmw_implementation/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.15.2-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/rcpputils
	ros-jazzy/rcutils
	ros-jazzy/rmw_implementation_cmake
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/performance_test_fixture
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rmw
	ros-jazzy/rmw_connextdds
	ros-jazzy/rmw_cyclonedds_cpp
	ros-jazzy/rmw_fastrtps_cpp
	ros-jazzy/rmw_fastrtps_dynamic_cpp
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
