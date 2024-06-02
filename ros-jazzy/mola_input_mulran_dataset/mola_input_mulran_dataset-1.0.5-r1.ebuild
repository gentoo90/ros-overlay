# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Offline RawDataSource from MulRan datasets"
HOMEPAGE="https://github.com/MOLAorg/mola/tree/develop/mola_input_mulran_dataset"
SRC_URI="https://github.com/ros2-gbp/mola-release/archive/release/jazzy/${PN}/1.0.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="GPL-3.0-only"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/mola_common
	ros-jazzy/mola_kernel
	ros-jazzy/mrpt2
"
DEPEND="${RDEPEND}
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
