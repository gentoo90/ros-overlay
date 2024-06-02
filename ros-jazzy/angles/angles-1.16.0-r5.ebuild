# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This package provides a set of simple math utilities to work\
        with [...]"
HOMEPAGE="http://wiki.ros.org/angles"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.16.0-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
