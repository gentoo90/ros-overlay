# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="A visualizer for doors and lifts"
HOMEPAGE="https://index.ros.org/p/rmf_visualization_building_systems/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rmf_visualization-release/archive/release/jazzy/${PN}/2.2.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/rmf_building_map_msgs
	ros-jazzy/rmf_door_msgs
	ros-jazzy/rmf_lift_msgs
	ros-jazzy/rmf_visualization_msgs
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
