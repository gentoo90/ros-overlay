# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Bound incoming velocity messages according to robot velocity and accelerati[...]"
HOMEPAGE="https://index.ros.org/p/kobuki_velocity_smoother/github-kobuki-base-velocity_smoother/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.15.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	test? (
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_cmake_cpplint
		ros-jazzy/ament_cmake_flake8
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_pep257
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_lint_auto
		ros-jazzy/launch_testing
		ros-jazzy/launch_testing_ament_cmake
		ros-jazzy/launch_testing_ros
		ros-jazzy/ros2test
		dev-python/matplotlib
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	ros-jazzy/ecl_build
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
