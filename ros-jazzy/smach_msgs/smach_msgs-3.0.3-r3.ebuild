# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="this package contains a set of messages that are used by the introspection\[...]"
HOMEPAGE="https://index.ros.org/p/smach_msgs/#jazzy"
SRC_URI="https://github.com/ros2-gbp/executive_smach-release/archive/release/jazzy/${PN}/3.0.3-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/std_msgs
	test? (
		ros-jazzy/ament_cmake_cpplint
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_lint
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_cppcheck
	ros-jazzy/ament_cmake_flake8
	ros-jazzy/ament_cmake_pep257
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
