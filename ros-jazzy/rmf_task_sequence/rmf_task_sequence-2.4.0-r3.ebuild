# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Implementation of phase-sequence tasks for the Robotics Middleware Framework"
HOMEPAGE="https://index.ros.org/p/rmf_task_sequence/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rmf_task-release/archive/release/jazzy/${PN}/2.4.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/nlohmann_json_schema_validator_vendor
	ros-jazzy/rmf_api_msgs
	ros-jazzy/rmf_task
	dev-cpp/nlohmann_json
	test? (
		ros-jazzy/ament_cmake_catch2
		ros-jazzy/ament_cmake_uncrustify
	)
"
DEPEND="${RDEPEND}
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
