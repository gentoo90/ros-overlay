# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS Package for different motion capture systems, including custom rigid bo[...]"
HOMEPAGE="https://index.ros.org/p/motion_capture_tracking/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.0.3-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/eigen3_cmake_module
	ros-jazzy/motion_capture_tracking_interfaces
	ros-jazzy/rclcpp
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2_ros
	dev-cpp/eigen
	sci-libs/pcl
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
