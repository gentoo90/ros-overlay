# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides a \'batteries included\' experience to novice users."
HOMEPAGE="https://index.ros.org/p/desktop_full/#jazzy"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/jazzy/${PN}/0.11.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/desktop
	ros-jazzy/perception
	ros-jazzy/ros_gz_sim_demos
	ros-jazzy/simulation
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
