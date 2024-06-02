# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="RViz2 plugin for 2D overlays in the 3D view. Mainly a ROS2 port of the JSK [...]"
HOMEPAGE="https://index.ros.org/p/rviz_2d_overlay_plugins/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.3.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/rviz_2d_overlay_msgs
	ros-jazzy/rviz_common
	ros-jazzy/rviz_ogre_vendor
	ros-jazzy/rviz_rendering
	ros-jazzy/std_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
