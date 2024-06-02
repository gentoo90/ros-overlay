# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="The fuse_core package provides the base class interfaces for the various fu[...]"
HOMEPAGE="https://index.ros.org/p/fuse_core/#jazzy"
SRC_URI="https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/${PN}/1.1.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/fuse_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	dev-cpp/eigen
	dev-cpp/glog
	dev-libs/boost[python]
	sci-libs/ceres-solver[sparse,lapack]
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/geometry_msgs
		ros-jazzy/launch
		ros-jazzy/launch_pytest
		ros-jazzy/rclcpp
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
