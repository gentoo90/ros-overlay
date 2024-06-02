# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Contains tests for \[\[bond\]\], including tests for \[\[bondcpp\]\]."
HOMEPAGE="http://www.ros.org/wiki/test_bond"
SRC_URI="https://github.com/ros2-gbp/bond_core-release/archive/release/jazzy/${PN}/4.0.0-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/std_msgs
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/bond
		ros-jazzy/bondcpp
		ros-jazzy/rclcpp
		ros-jazzy/rclcpp_lifecycle
		dev-libs/ossp-uuid
		virtual/pkgconfig
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
