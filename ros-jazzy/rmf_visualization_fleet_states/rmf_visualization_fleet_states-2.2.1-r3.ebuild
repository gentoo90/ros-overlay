# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A package to visualize positions of robots from different fleets in the a b[...]"
HOMEPAGE="https://index.ros.org/p/rmf_visualization_fleet_states/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rmf_visualization-release/archive/release/jazzy/${PN}/2.2.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rmf_fleet_msgs
	ros-jazzy/rmf_visualization_msgs
	ros-jazzy/visualization_msgs
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/rmf_utils
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
