# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This avoids use of dynamic storage \(malloc/new\) and thread safety \(mutex[...]"
HOMEPAGE="http://wiki.ros.org/ecl_sigslots_lite"
SRC_URI="https://github.com/ros2-gbp/ecl_lite-release/archive/release/jazzy/${PN}/1.2.0-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ecl_config
	ros-jazzy/ecl_errors
	ros-jazzy/ecl_license
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	ros-jazzy/ecl_build
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
