# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Wrapper around libcurl, it provides a fixed CMake module and an ExternalPro[...]"
HOMEPAGE="https://github.com/curl/curl"
SRC_URI="https://github.com/ros2-gbp/resource_retriever-release/archive/release/jazzy/${PN}/3.4.2-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 MIT )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	net-misc/curl
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_vendor_package
	sys-apps/file
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
