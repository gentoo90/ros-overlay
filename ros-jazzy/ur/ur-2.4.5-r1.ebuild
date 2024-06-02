# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Metapackage for universal robots"
HOMEPAGE="https://index.ros.org/p/ur/#jazzy"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/jazzy/${PN}/2.4.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ur_calibration
	ros-jazzy/ur_controllers
	ros-jazzy/ur_dashboard_msgs
	ros-jazzy/ur_moveit_config
	ros-jazzy/ur_robot_driver
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
