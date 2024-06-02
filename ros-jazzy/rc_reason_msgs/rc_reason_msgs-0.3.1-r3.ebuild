# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Msg and srv definitions for rc_reason_clients"
HOMEPAGE="https://index.ros.org/p/rc_reason_msgs/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/jazzy/${PN}/0.3.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/rc_common_msgs
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/shape_msgs
	ros-jazzy/std_msgs
	test? (
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
