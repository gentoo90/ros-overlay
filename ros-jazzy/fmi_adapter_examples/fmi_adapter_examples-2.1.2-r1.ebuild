# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides small examples for use of the fmi_adapter package"
HOMEPAGE="http://wiki.ros.org/fmi_adapter"
SRC_URI="https://github.com/ros2-gbp/fmi_adapter-release/archive/release/jazzy/${PN}/2.1.2-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/fmi_adapter
	ros-jazzy/launch
	ros-jazzy/launch_ros
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
