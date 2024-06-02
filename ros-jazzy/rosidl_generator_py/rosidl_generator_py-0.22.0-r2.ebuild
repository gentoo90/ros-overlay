# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Generate the ROS interfaces in Python."
HOMEPAGE="https://index.ros.org/p/rosidl_generator_py/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rosidl_python-release/archive/release/jazzy/${PN}/0.22.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_cmake_cppcheck
	ros-jazzy/ament_cmake_cpplint
	ros-jazzy/ament_cmake_flake8
	ros-jazzy/ament_cmake_pep257
	ros-jazzy/ament_cmake_uncrustify
	ros-jazzy/ament_index_python
	ros-jazzy/rmw
	ros-jazzy/rosidl_cli
	ros-jazzy/rosidl_generator_c
	ros-jazzy/rosidl_parser
	ros-jazzy/rosidl_runtime_c
	ros-jazzy/rpyutils
	dev-python/numpy
	test? (
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_index_python
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/python_cmake_module
		ros-jazzy/rmw
		ros-jazzy/rosidl_cmake
		ros-jazzy/rosidl_generator_c
		ros-jazzy/rosidl_generator_cpp
		ros-jazzy/rosidl_parser
		ros-jazzy/rosidl_typesupport_c
		ros-jazzy/rosidl_typesupport_fastrtps_c
		ros-jazzy/rosidl_typesupport_introspection_c
		ros-jazzy/rpyutils
		ros-jazzy/test_interface_files
		dev-python/numpy
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/python_cmake_module
	ros-jazzy/rosidl_pycommon
	ros-jazzy/rosidl_typesupport_c
	ros-jazzy/rosidl_typesupport_interface
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
