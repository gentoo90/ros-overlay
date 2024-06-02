# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="MAVLink message marshaling library.\
  This package provides C-headers and [...]"
HOMEPAGE="https://mavlink.io/en/"
SRC_URI="https://github.com/ros2-gbp/${PN}-gbp-release/archive/release/jazzy/${PN}/2023.9.9-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="LGPL-3.0-only"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ros_environment
	=dev-lang/python-3*
	dev-build/cmake
	dev-python/future
	dev-python/lxml
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
