# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Generate the type support for C messages."
HOMEPAGE="https://index.ros.org/p/rosidl_typesupport_c/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/jazzy/${PN}/3.2.2-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/rcpputils
	ros-jazzy/rcutils
	ros-jazzy/rosidl_cli
	ros-jazzy/rosidl_generator_c
	ros-jazzy/rosidl_pycommon
	ros-jazzy/rosidl_runtime_c
	ros-jazzy/rosidl_typesupport_interface
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/mimick_vendor
		ros-jazzy/performance_test_fixture
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_core
	ros-jazzy/ament_cmake_ros
	ros-jazzy/rosidl_typesupport_introspection_c
	dev-lang/python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
