# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A lightweight multivehicle simulation framework."
HOMEPAGE="https://wiki.ros.org/mvsim"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.9.4-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/mrpt2
	ros-jazzy/nav_msgs
	ros-jazzy/ros2launch
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/visualization_msgs
	app-arch/unzip
	dev-lang/python
	dev-libs/boost[python]
	dev-libs/protobuf
	dev-python/pip
	dev-python/protobuf-python
	dev-python/pybind11
	net-libs/cppzmq
	net-misc/wget
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_gmock
	ros-jazzy/ament_cmake_gtest
	ros-jazzy/ament_cmake_xmllint
	ros-jazzy/ros_environment
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
