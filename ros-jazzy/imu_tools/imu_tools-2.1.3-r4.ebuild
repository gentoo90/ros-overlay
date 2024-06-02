# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Various tools for IMU devices"
HOMEPAGE="http://ros.org/wiki/imu_tools"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.1.3-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-GPL"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/imu_complementary_filter
	ros-jazzy/imu_filter_madgwick
	ros-jazzy/rviz_imu_plugin
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
