# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The formatters here simply format various input types to a specified\
   te[...]"
HOMEPAGE="http://wiki.ros.org/ecl_formatters"
SRC_URI="https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/${PN}/1.2.1-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ecl_config
	ros-jazzy/ecl_converters
	ros-jazzy/ecl_exceptions
	ros-jazzy/ecl_license
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	ros-jazzy/ecl_build
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
