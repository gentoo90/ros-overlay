# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_base\' and includes simulation packages."
HOMEPAGE="https://index.ros.org/p/simulation/#jazzy"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/jazzy/${PN}/0.11.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ros_base
	ros-jazzy/ros_gz_bridge
	ros-jazzy/ros_gz_image
	ros-jazzy/ros_gz_interfaces
	ros-jazzy/ros_gz_sim
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
