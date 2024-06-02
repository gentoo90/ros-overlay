# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="common linter settings for OUXT Polaris ROS2 packages"
HOMEPAGE="https://index.ros.org/p/ouxt_lint_common/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ouxt_common-release/archive/release/jazzy/${PN}/0.0.8-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_cmake_clang_format
	ros-jazzy/ament_cmake_copyright
	ros-jazzy/ament_cmake_pep257
	ros-jazzy/ament_cmake_xmllint
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
