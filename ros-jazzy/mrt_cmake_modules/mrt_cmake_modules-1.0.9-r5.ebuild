# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="CMake Functions and Modules for automating CMake"
HOMEPAGE="http://wiki.ros.org/mrt_cmake_modules"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.0.9-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_core
	ros-jazzy/gtest_vendor
	ros-jazzy/ros_environment
	dev-python/catkin_pkg
	dev-python/pyyaml
	dev-python/rospkg
	dev-python/setuptools
	dev-util/lcov
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
