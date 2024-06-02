# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="URDF description for Universal Robots"
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Description/issues"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.4.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( BSD-3-Clause Universal-Robots-A-S’-Terms-and-Conditions-for-Use-of-Graphical-Documentation )"

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
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/launch_testing_ament_cmake
		ros-jazzy/launch_testing_ros
		ros-jazzy/xacro
		dev-libs/urdfdom
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
