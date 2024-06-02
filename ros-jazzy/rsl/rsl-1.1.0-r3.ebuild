# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="ROS Support Library"
HOMEPAGE="https://index.ros.org/p/rsl/#jazzy"
SRC_URI="https://github.com/ros2-gbp/RSL-release/archive/release/jazzy/${PN}/1.1.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclcpp
	ros-jazzy/tcb_span
	ros-jazzy/tl_expected
	dev-cpp/eigen
	dev-libs/libfmt
	test? (
		dev-cpp/range-v3
		dev-vcs/git
		sys-devel/clang
	)
"
DEPEND="${RDEPEND}
	app-text/doxygen
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
