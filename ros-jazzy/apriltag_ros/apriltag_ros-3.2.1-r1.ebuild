# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="AprilTag detection node"
HOMEPAGE="https://index.ros.org/p/apriltag_ros/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/3.2.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/apriltag
	ros-jazzy/apriltag_msgs
	ros-jazzy/cv_bridge
	ros-jazzy/image_transport
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2_ros
	test? (
		ros-jazzy/ament_cmake_clang_format
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"