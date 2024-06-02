# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Inverse Kinematics solver for MoveIt"
HOMEPAGE="https://index.ros.org/p/pick_ik/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.1.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/generate_parameter_library
	ros-jazzy/moveit_core
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rsl
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_kdl
	ros-jazzy/tl_expected
	dev-cpp/range-v3
	dev-libs/libfmt
	test? (
		ros-jazzy/moveit_resources_panda_moveit_config
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
