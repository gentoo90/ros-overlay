# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Metapackage for ROS2 control related packages"
HOMEPAGE="https://index.ros.org/p/ros2_control/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/4.11.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/controller_interface
	ros-jazzy/controller_manager
	ros-jazzy/controller_manager_msgs
	ros-jazzy/hardware_interface
	ros-jazzy/joint_limits
	ros-jazzy/ros2_control_test_assets
	ros-jazzy/ros2controlcli
	ros-jazzy/transmission_interface
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
