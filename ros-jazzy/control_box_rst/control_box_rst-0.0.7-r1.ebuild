# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="The control_box_rst package provides C++ libraries for predictive control, [...]"
HOMEPAGE="http://wiki.ros.org/control_box_rst"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.0.7-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="GPL-3.0-only"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	dev-cpp/eigen
	sci-libs/ipopt
"
DEPEND="${RDEPEND}
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
