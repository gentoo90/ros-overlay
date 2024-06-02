# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Code shared on static and dynamic type support of rmw_fastrtps_cpp."
HOMEPAGE="https://index.ros.org/p/rmw_fastrtps_shared_cpp/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/jazzy/${PN}/8.4.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/fastcdr
	ros-jazzy/fastrtps
	ros-jazzy/fastrtps_cmake_module
	ros-jazzy/rcpputils
	ros-jazzy/rcutils
	ros-jazzy/rmw
	ros-jazzy/rmw_dds_common
	ros-jazzy/rosidl_dynamic_typesupport
	ros-jazzy/rosidl_typesupport_introspection_c
	ros-jazzy/rosidl_typesupport_introspection_cpp
	ros-jazzy/tracetools
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/osrf_testing_tools_cpp
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_ros
	ros-jazzy/rosidl_runtime_c
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
