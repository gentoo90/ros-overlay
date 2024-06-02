# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Generate hashes and descriptions of ROS 2 interface types, per REP-2011."
HOMEPAGE="https://index.ros.org/p/rosidl_generator_type_description/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/${PN}/4.6.2-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/rosidl_cli
	ros-jazzy/rosidl_parser
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_core
	ros-jazzy/ament_cmake_python
	ros-jazzy/ament_cmake_ros
	dev-lang/python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
