# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Gazebo ros2_control package allows to control simulated robots using ros2_c[...]"
HOMEPAGE="https://index.ros.org/p/gz_ros2_control/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/jazzy/${PN}/1.2.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/controller_manager
	ros-jazzy/gz_plugin_vendor
	ros-jazzy/gz_sim_vendor
	ros-jazzy/hardware_interface
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/yaml_cpp_vendor
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
