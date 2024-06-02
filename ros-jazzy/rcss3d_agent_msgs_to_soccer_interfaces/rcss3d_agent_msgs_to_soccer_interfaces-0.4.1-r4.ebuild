# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Library with methods that convert rcss3d_agent_msgs to soccer_interfaces"
HOMEPAGE="https://index.ros.org/p/rcss3d_agent_msgs_to_soccer_interfaces/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/jazzy/${PN}/0.4.1-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rcss3d_agent_msgs
	ros-jazzy/soccer_vision_3d_msgs
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
