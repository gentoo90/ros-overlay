# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Eclipse iceoryx inter-process-communication \(IPC\) middleware Posix Shared[...]"
HOMEPAGE="https://iceoryx.io"
SRC_URI="https://github.com/ros2-gbp/iceoryx-release/archive/release/jazzy/${PN}/2.0.5-6.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/iceoryx_hoofs
"
DEPEND="${RDEPEND}
	dev-build/cmake
	dev-cpp/cpptoml
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

PATCHES=(
	"${FILESDIR}/disable-cpptoml-download.patch"
)
