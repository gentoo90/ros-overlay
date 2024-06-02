# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS2 driver for synchronized flir cameras using the Spinnaker SDK"
HOMEPAGE="https://index.ros.org/p/spinnaker_synchronized_camera_driver/#jazzy"
SRC_URI="https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/jazzy/${PN}/2.0.15-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/spinnaker_camera_driver
	test? (
		ros-jazzy/ament_cmake_black
		ros-jazzy/ament_cmake_clang_format
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
