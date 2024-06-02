# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Meta-package for lanelet2"
HOMEPAGE="https://github.com/fzi-forschungszentrum-informatik/lanelet2.git"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.2.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/lanelet2_core
	ros-jazzy/lanelet2_examples
	ros-jazzy/lanelet2_io
	ros-jazzy/lanelet2_maps
	ros-jazzy/lanelet2_matching
	ros-jazzy/lanelet2_projection
	ros-jazzy/lanelet2_python
	ros-jazzy/lanelet2_routing
	ros-jazzy/lanelet2_traffic_rules
	ros-jazzy/lanelet2_validation
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_core
	ros-jazzy/ros_environment
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
