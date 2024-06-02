# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Meta package for ros2cli common extensions"
HOMEPAGE="https://index.ros.org/p/ros2cli_common_extensions/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.3.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/launch_xml
	ros-jazzy/launch_yaml
	ros-jazzy/ros2action
	ros-jazzy/ros2cli
	ros-jazzy/ros2component
	ros-jazzy/ros2doctor
	ros-jazzy/ros2interface
	ros-jazzy/ros2launch
	ros-jazzy/ros2lifecycle
	ros-jazzy/ros2multicast
	ros-jazzy/ros2node
	ros-jazzy/ros2param
	ros-jazzy/ros2pkg
	ros-jazzy/ros2run
	ros-jazzy/ros2service
	ros-jazzy/ros2topic
	ros-jazzy/sros2
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
