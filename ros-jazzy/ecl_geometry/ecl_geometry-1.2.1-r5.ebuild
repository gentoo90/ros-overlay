# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Any tools relating to mathematical geometry.\
     Primarily featuring poly[...]"
HOMEPAGE="http://wiki.ros.org/ecl_geometry"
SRC_URI="https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/${PN}/1.2.1-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ecl_build
	ros-jazzy/ecl_config
	ros-jazzy/ecl_containers
	ros-jazzy/ecl_exceptions
	ros-jazzy/ecl_formatters
	ros-jazzy/ecl_license
	ros-jazzy/ecl_linear_algebra
	ros-jazzy/ecl_math
	ros-jazzy/ecl_mpl
	ros-jazzy/ecl_type_traits
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
