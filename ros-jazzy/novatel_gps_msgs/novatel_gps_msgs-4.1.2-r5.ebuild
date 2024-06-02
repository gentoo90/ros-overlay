# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Messages for proprietary \(non-NMEA\) sentences from Novatel GPS receivers."
HOMEPAGE="https://github.com/swri-robotics/novatel_gps_driver"
SRC_URI="https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/jazzy/${PN}/4.1.2-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/std_msgs
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
