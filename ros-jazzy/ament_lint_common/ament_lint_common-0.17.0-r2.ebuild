# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The list of commonly used linters in the ament build system in CMake."
HOMEPAGE="https://index.ros.org/p/ament_lint_common/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/${PN}/0.17.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_cmake_copyright
	ros-jazzy/ament_cmake_cppcheck
	ros-jazzy/ament_cmake_cpplint
	ros-jazzy/ament_cmake_flake8
	ros-jazzy/ament_cmake_lint_cmake
	ros-jazzy/ament_cmake_pep257
	ros-jazzy/ament_cmake_uncrustify
	ros-jazzy/ament_cmake_xmllint
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_core
	ros-jazzy/ament_cmake_export_dependencies
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
