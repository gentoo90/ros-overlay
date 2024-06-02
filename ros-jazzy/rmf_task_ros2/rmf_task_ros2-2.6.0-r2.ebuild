# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A package managing the dispatching of tasks in RMF system."
HOMEPAGE="https://index.ros.org/p/rmf_task_ros2/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rmf_ros2-release/archive/release/jazzy/${PN}/2.6.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/backward_ros
	ros-jazzy/nlohmann_json_schema_validator_vendor
	ros-jazzy/rclcpp
	ros-jazzy/rmf_api_msgs
	ros-jazzy/rmf_task_msgs
	ros-jazzy/rmf_traffic
	ros-jazzy/rmf_traffic_ros2
	ros-jazzy/rmf_utils
	ros-jazzy/rmf_websocket
	dev-cpp/nlohmann_json
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
