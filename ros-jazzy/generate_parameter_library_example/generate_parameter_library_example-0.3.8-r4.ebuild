# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Example usage of generate_parameter_library."
HOMEPAGE="https://index.ros.org/p/generate_parameter_library_example/#jazzy"
SRC_URI="https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/jazzy/${PN}/0.3.8-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/generate_parameter_library
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_core
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
