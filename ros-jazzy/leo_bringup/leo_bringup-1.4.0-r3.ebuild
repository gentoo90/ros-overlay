# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Scripts and launch files for starting basic Leo Rover functionalities."
HOMEPAGE="http://wiki.ros.org/leo_bringup"
SRC_URI="https://github.com/ros2-gbp/leo_robot-release/archive/release/jazzy/${PN}/1.4.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/image_proc
	ros-jazzy/leo_description
	ros-jazzy/leo_fw
	ros-jazzy/robot_state_publisher
	ros-jazzy/rosapi
	ros-jazzy/rosbridge_server
	ros-jazzy/sensor_msgs
	ros-jazzy/v4l2_camera
	ros-jazzy/xacro
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
