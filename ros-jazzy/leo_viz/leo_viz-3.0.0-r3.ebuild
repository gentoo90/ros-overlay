# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Visualization launch files and RViz configurations for Leo Rover"
HOMEPAGE="http://wiki.ros.org/leo_viz"
SRC_URI="https://github.com/ros2-gbp/leo_desktop-release/archive/release/jazzy/${PN}/3.0.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/joint_state_publisher
	ros-jazzy/joint_state_publisher_gui
	ros-jazzy/leo_description
	ros-jazzy/rviz2
	test? (
		ros-jazzy/ament_cmake_lint_cmake
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
