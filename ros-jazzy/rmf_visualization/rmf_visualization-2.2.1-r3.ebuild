# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Package containing a single launch file to bringup various visualizations"
HOMEPAGE="https://index.ros.org/p/rmf_visualization/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.2.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/launch_xml
	ros-jazzy/rmf_visualization_building_systems
	ros-jazzy/rmf_visualization_fleet_states
	ros-jazzy/rmf_visualization_floorplans
	ros-jazzy/rmf_visualization_navgraphs
	ros-jazzy/rmf_visualization_obstacles
	ros-jazzy/rmf_visualization_rviz2_plugins
	ros-jazzy/rmf_visualization_schedule
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
