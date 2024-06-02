# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Fleet Adapter package for RMF fleets."
HOMEPAGE="https://index.ros.org/p/rmf_fleet_adapter/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rmf_ros2-release/archive/release/jazzy/${PN}/2.6.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/backward_ros
	ros-jazzy/nlohmann_json_schema_validator_vendor
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rmf_api_msgs
	ros-jazzy/rmf_battery
	ros-jazzy/rmf_building_map_msgs
	ros-jazzy/rmf_dispenser_msgs
	ros-jazzy/rmf_door_msgs
	ros-jazzy/rmf_fleet_msgs
	ros-jazzy/rmf_ingestor_msgs
	ros-jazzy/rmf_lift_msgs
	ros-jazzy/rmf_task
	ros-jazzy/rmf_task_msgs
	ros-jazzy/rmf_task_ros2
	ros-jazzy/rmf_task_sequence
	ros-jazzy/rmf_traffic
	ros-jazzy/rmf_traffic_ros2
	ros-jazzy/rmf_utils
	ros-jazzy/rmf_websocket
	ros-jazzy/std_msgs
	dev-cpp/nlohmann_json
	test? (
		ros-jazzy/ament_cmake_catch2
		ros-jazzy/ament_cmake_uncrustify
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-cpp/eigen
	dev-cpp/yaml-cpp
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
