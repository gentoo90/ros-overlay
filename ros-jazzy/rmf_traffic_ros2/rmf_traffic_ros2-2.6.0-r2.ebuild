# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A package containing messages used by the RMF traffic management system."
HOMEPAGE="https://index.ros.org/p/rmf_traffic_ros2/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rmf_ros2-release/archive/release/jazzy/${PN}/2.6.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/backward_ros
	ros-jazzy/rclcpp
	ros-jazzy/rmf_building_map_msgs
	ros-jazzy/rmf_fleet_msgs
	ros-jazzy/rmf_site_map_msgs
	ros-jazzy/rmf_traffic
	ros-jazzy/rmf_traffic_msgs
	ros-jazzy/rmf_utils
	dev-cpp/nlohmann_json
	dev-cpp/yaml-cpp
	dev-libs/ossp-uuid
	sci-libs/proj
	sys-libs/zlib
	test? (
		ros-jazzy/ament_cmake_catch2
		ros-jazzy/ament_cmake_uncrustify
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
