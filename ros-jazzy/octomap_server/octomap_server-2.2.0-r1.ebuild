# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="octomap_server loads a 3D map \(as Octree-based OctoMap\) and distributes i[...]"
HOMEPAGE="http://www.ros.org/wiki/octomap_server"
SRC_URI="https://github.com/ros2-gbp/octomap_mapping-release/archive/release/jazzy/${PN}/2.2.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/message_filters
	ros-jazzy/nav_msgs
	ros-jazzy/octomap
	ros-jazzy/octomap_msgs
	ros-jazzy/octomap_ros
	ros-jazzy/pcl_conversions
	ros-jazzy/pcl_ros
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	ros-jazzy/tf2
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/visualization_msgs
	sci-libs/pcl
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
