# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The ability to add definitions, include directories and libraries of a pack[...]"
HOMEPAGE="https://index.ros.org/p/ament_cmake_target_dependencies/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/${PN}/2.5.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_core
	ros-jazzy/ament_cmake_include_directories
	ros-jazzy/ament_cmake_libraries
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
