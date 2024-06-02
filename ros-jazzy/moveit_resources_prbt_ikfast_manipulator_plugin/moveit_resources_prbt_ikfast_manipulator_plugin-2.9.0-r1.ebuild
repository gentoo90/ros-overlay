# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The prbt_ikfast_manipulator_plugin package"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/generate_parameter_library
	ros-jazzy/moveit_core
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_kdl
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_eigen_kdl
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
