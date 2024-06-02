# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The ARUCO Library has been developed by the Ava group of the Univeristy of [...]"
HOMEPAGE="http://www.uco.es/investiga/grupos/ava/node/26"
SRC_URI="https://github.com/pal-gbp/${PN}-release/archive/release/jazzy/${PN}/5.0.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/aruco
	ros-jazzy/aruco_msgs
	ros-jazzy/cv_bridge
	ros-jazzy/geometry_msgs
	ros-jazzy/image_transport
	ros-jazzy/rclcpp
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/visualization_msgs
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
