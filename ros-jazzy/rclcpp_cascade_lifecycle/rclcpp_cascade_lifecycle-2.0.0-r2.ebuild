# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides a mechanism to make trees of lifecycle nodes to propagate state ch[...]"
HOMEPAGE="https://index.ros.org/p/rclcpp_cascade_lifecycle/#jazzy"
SRC_URI="https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/jazzy/${PN}/2.0.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/cascade_lifecycle_msgs
	ros-jazzy/lifecycle_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_lifecycle
	test? (
		ros-jazzy/ament_cmake_gtest
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
