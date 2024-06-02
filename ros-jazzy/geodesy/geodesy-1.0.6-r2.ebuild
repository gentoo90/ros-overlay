# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Python and C++ interfaces for manipulating geodetic coordinates."
HOMEPAGE="http://wiki.ros.org/geodesy"
SRC_URI="https://github.com/ros2-gbp/geographic_info-release/archive/release/jazzy/${PN}/1.0.6-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/angles
	ros-jazzy/geographic_msgs
	ros-jazzy/geometry_msgs
	ros-jazzy/sensor_msgs
	ros-jazzy/unique_identifier_msgs
	dev-python/pyproj
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
