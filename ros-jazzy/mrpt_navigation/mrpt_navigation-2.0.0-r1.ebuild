# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Tools related to the Mobile Robot Programming Toolkit \(MRPT\).\
    Refer [...]"
HOMEPAGE="https://wiki.ros.org/mrpt_navigation"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_lint_auto
	ros-jazzy/ament_lint_common
	ros-jazzy/mrpt_map_server
	ros-jazzy/mrpt_nav_interfaces
	ros-jazzy/mrpt_pf_localization
	ros-jazzy/mrpt_pointcloud_pipeline
	ros-jazzy/mrpt_rawlog
	ros-jazzy/mrpt_reactivenav2d
	ros-jazzy/mrpt_tutorials
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
