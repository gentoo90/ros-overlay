# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Standalone C++ library for accessing Universal Robots interfaces. This has [...]"
HOMEPAGE="http://wiki.ros.org/ur_client_library"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/jazzy/${PN}/1.3.6-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD-2-Clause Zlib )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_cmake
"
DEPEND="${RDEPEND}
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
