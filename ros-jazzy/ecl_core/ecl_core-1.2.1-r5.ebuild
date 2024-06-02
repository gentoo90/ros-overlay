# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A set of tools and interfaces extending the capabilities of c++ to\
    pro[...]"
HOMEPAGE="http://www.ros.org/wiki/ecl_core"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.2.1-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ecl_command_line
	ros-jazzy/ecl_concepts
	ros-jazzy/ecl_containers
	ros-jazzy/ecl_converters
	ros-jazzy/ecl_core_apps
	ros-jazzy/ecl_devices
	ros-jazzy/ecl_eigen
	ros-jazzy/ecl_exceptions
	ros-jazzy/ecl_formatters
	ros-jazzy/ecl_geometry
	ros-jazzy/ecl_ipc
	ros-jazzy/ecl_linear_algebra
	ros-jazzy/ecl_math
	ros-jazzy/ecl_mpl
	ros-jazzy/ecl_sigslots
	ros-jazzy/ecl_statistics
	ros-jazzy/ecl_streams
	ros-jazzy/ecl_threads
	ros-jazzy/ecl_time
	ros-jazzy/ecl_type_traits
	ros-jazzy/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
