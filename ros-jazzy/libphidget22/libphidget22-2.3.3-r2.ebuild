# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This package wraps the libphidget22 to use it as a ROS dependency"
HOMEPAGE="http://ros.org/wiki/libphidget22"
SRC_URI="https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/${PN}/2.3.3-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="LGPL"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	virtual/libusb:1
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
