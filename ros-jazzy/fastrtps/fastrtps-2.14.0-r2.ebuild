# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="*eprosima Fast DDS* \(formerly Fast RTPS\) is a C++ implementation of the D[...]"
HOMEPAGE="https://www.eprosima.com/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.14.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/fastcdr
	ros-jazzy/foonathan_memory_vendor
	dev-lang/python
	dev-libs/openssl
	dev-libs/tinyxml2
"
DEPEND="${RDEPEND}
	dev-build/cmake
	dev-cpp/asio
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"