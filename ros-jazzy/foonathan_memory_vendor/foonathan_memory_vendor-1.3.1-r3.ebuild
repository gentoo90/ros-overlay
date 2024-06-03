# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Foonathan/memory vendor package for Fast-RTPS."
HOMEPAGE="https://index.ros.org/p/foonathan_memory_vendor/#jazzy"
SRC_URI="
	https://github.com/foonathan/memory/archive/refs/tags/v0.7-3.tar.gz -> foonathan-memory-0.7-3.tar.gz
	https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.3.1-3.tar.gz
 -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 Zlib )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	test? (
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_test
		ros-jazzy/ament_cmake_xmllint
	)
"
DEPEND="${RDEPEND}
	dev-build/cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

PATCHES=(
	"${FILESDIR}/1.3.1-no-download.patch"
)
