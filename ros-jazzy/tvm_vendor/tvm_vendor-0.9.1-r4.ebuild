# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Wrapper around Apache TVM to make it available to the ROS ecosystem."
HOMEPAGE="https://tvm.apache.org/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.9.1-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	dev-libs/libxml2
	dev-util/opencl-headers
	dev-util/spirv-headers
	dev-util/spirv-tools
	dev-vcs/git
	media-libs/vulkan-loader
	sci-libs/openblas
	virtual/opencl
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ros_environment
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
