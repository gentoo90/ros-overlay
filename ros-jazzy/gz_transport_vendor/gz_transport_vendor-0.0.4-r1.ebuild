# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Vendor package for: gz-transport13 13.2.0\
\
    Gazebo Transport: Provides[...]"
HOMEPAGE="https://github.com/gazebosim/gz-transport"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.0.4-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/gz_cmake_vendor
	ros-jazzy/gz_math_vendor
	ros-jazzy/gz_msgs_vendor
	ros-jazzy/gz_tools_vendor
	ros-jazzy/gz_utils_vendor
	=dev-lang/python-3*
	dev-db/sqlite:3
	dev-libs/ossp-uuid
	dev-libs/protobuf
	dev-python/psutil
	dev-python/pybind11
	dev-python/pytest
	net-libs/cppzmq
	test? (
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_xmllint
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_core
	ros-jazzy/ament_cmake_test
	ros-jazzy/ament_cmake_vendor_package
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
