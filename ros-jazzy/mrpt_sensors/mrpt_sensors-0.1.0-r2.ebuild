# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS nodes for various robotics sensors via mrpt-hwdrivers. Metapackage for [...]"
HOMEPAGE="https://github.com/mrpt-ros-pkg/mrpt_sensors/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.1.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_lint_auto
	ros-jazzy/ament_lint_common
	ros-jazzy/mrpt_generic_sensor
	ros-jazzy/mrpt_sensor_bumblebee_stereo
	ros-jazzy/mrpt_sensor_gnns_nmea
	ros-jazzy/mrpt_sensorlib
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
