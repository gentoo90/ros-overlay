# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The pal_statistics package"
HOMEPAGE="https://github.com/pal-robotics/pal_statistics"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.2.4-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/pal_statistics_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/rclpy
	dev-libs/boost[python]
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
