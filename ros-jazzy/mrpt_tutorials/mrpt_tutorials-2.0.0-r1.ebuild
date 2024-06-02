# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Example files used as tutorials for MRPT ROS packages"
HOMEPAGE="https://index.ros.org/p/mrpt_tutorials/#jazzy"
SRC_URI="https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/${PN}/2.0.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_lint_auto
	ros-jazzy/ament_lint_common
	ros-jazzy/mvsim
	ros-jazzy/teleop_twist_keyboard
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
