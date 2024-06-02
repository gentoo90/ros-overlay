# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Library and Utilities for working with ifm pmd-based 3D ToF Cameras"
HOMEPAGE="https://github.com/ifm/ifm3d"
SRC_URI="https://github.com/ros2-gbp/ifm3d-release/archive/release/jazzy/${PN}/0.18.0-10.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/cv_bridge
	dev-cpp/glog
	dev-libs/xmlrpc-c
	net-misc/curl
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	dev-build/cmake
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
