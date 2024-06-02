# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A configuration package defining the default ROS interface generators."
HOMEPAGE="https://index.ros.org/p/rosidl_default_generators/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/jazzy/${PN}/1.6.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/action_msgs
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_core
	ros-jazzy/rosidl_core_generators
	ros-jazzy/service_msgs
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
