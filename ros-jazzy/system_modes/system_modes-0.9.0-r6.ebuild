# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The system modes concept assumes that a robotics system is built\
    from [...]"
HOMEPAGE="https://micro.ros.org/docs/concepts/client_library/lifecycle_and_system_modes/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.9.0-6.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/launch_ros
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/system_modes_msgs
	test? (
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_cmake_cpplint
		ros-jazzy/ament_cmake_flake8
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_pep257
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_index_python
		ros-jazzy/ament_lint_auto
		ros-jazzy/launch_testing_ament_cmake
		ros-jazzy/launch_testing_ros
		ros-jazzy/ros2run
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
