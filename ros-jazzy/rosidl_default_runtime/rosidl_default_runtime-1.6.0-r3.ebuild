# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A configuration package defining the runtime for the ROS interfaces."
HOMEPAGE="https://index.ros.org/p/rosidl_default_runtime/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/jazzy/${PN}/1.6.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/action_msgs
	ros-jazzy/rosidl_core_runtime
	ros-jazzy/service_msgs
	test? (
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
