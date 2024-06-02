# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Package containing tools for dynamically loadable components"
HOMEPAGE="https://index.ros.org/p/rclcpp_components/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rclcpp-release/archive/release/jazzy/${PN}/28.1.2-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/class_loader
	ros-jazzy/composition_interfaces
	ros-jazzy/rclcpp
	test? (
		ros-jazzy/ament_cmake_google_benchmark
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/launch_testing
		ros-jazzy/std_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	ros-jazzy/rcpputils
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
