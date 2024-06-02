# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="CMake to generate ROS parameter library."
HOMEPAGE="https://index.ros.org/p/generate_parameter_library/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.3.8-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/parameter_traits
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/rclpy
	ros-jazzy/rsl
	ros-jazzy/tcb_span
	ros-jazzy/tl_expected
	dev-libs/libfmt
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
	ros-jazzy/generate_parameter_library_py
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
