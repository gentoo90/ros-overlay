# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Bringup package for Leo Rover Gazebo simulation in ROS 2"
HOMEPAGE="https://index.ros.org/p/leo_gz_bringup/#jazzy"
SRC_URI="https://github.com/ros2-gbp/leo_simulator-release/archive/release/jazzy/${PN}/2.0.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/leo_description
	ros-jazzy/leo_gz_plugins
	ros-jazzy/leo_gz_worlds
	ros-jazzy/robot_state_publisher
	ros-jazzy/ros_gz_bridge
	ros-jazzy/ros_gz_image
	ros-jazzy/ros_gz_sim
	ros-jazzy/xacro
	test? (
		ros-jazzy/ament_cmake_black
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_mypy
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
