# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="mcap vendor package"
HOMEPAGE="https://index.ros.org/p/mcap_vendor/#jazzy"
SRC_URI="
	https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v1.3.0.tar.gz -> mcap-1.3.0.gh.tar.gz
	https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/${PN}/0.26.3-1.tar.gz
 -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/liblz4_vendor
	ros-jazzy/zstd_vendor
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

PATCHES=(
	"${FILESDIR}/0.26.3-no-download.patch"
)