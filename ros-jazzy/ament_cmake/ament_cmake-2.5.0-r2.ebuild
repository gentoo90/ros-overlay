# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The entry point package for the ament buildsystem in CMake."
HOMEPAGE="https://index.ros.org/p/ament_cmake/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.5.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_cmake_core
	ros-jazzy/ament_cmake_export_definitions
	ros-jazzy/ament_cmake_export_dependencies
	ros-jazzy/ament_cmake_export_include_directories
	ros-jazzy/ament_cmake_export_interfaces
	ros-jazzy/ament_cmake_export_libraries
	ros-jazzy/ament_cmake_export_link_flags
	ros-jazzy/ament_cmake_export_targets
	ros-jazzy/ament_cmake_gen_version_h
	ros-jazzy/ament_cmake_libraries
	ros-jazzy/ament_cmake_python
	ros-jazzy/ament_cmake_target_dependencies
	ros-jazzy/ament_cmake_test
	ros-jazzy/ament_cmake_version
"
DEPEND="${RDEPEND}
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
