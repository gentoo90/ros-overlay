# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS interfaces used by Mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/ros2-gbp/mapviz-release/archive/release/jazzy/${PN}/2.3.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/rosidl_default_runtime
"
DEPEND="${RDEPEND}
	ros-jazzy/builtin_interfaces
	ros-jazzy/marti_common_msgs
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
