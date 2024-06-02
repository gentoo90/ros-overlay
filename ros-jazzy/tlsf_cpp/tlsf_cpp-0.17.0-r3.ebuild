# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="C++ stdlib-compatible wrapper around tlsf allocator and ROS2 examples"
HOMEPAGE="https://index.ros.org/p/tlsf_cpp/#jazzy"
SRC_URI="https://github.com/ros2-gbp/realtime_support-release/archive/release/jazzy/${PN}/0.17.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( LGPL-2.1-only Apache-2.0 )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_cmake
	ros-jazzy/rclcpp
	ros-jazzy/rmw
	ros-jazzy/std_msgs
	ros-jazzy/tlsf
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/rmw_implementation_cmake
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
