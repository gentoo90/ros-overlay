# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Message definitions for aruco_opencv package."
HOMEPAGE="https://index.ros.org/p/aruco_opencv_msgs/#jazzy"
SRC_URI="https://github.com/ros2-gbp/aruco_opencv-release/archive/release/jazzy/${PN}/6.0.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/std_msgs
	test? (
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
