# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="URDF and xacro description package for the Robotiq gripper."
HOMEPAGE="https://index.ros.org/p/robotiq_description/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/jazzy/${PN}/0.0.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/joint_state_publisher_gui
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/robot_state_publisher
	ros-jazzy/rviz2
	ros-jazzy/urdf
	ros-jazzy/xacro
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
