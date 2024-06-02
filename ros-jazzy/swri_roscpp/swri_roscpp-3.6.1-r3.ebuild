# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="swri_roscpp"
HOMEPAGE="https://index.ros.org/p/swri_roscpp/#jazzy"
SRC_URI="https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/${PN}/3.6.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/diagnostic_updater
	ros-jazzy/marti_common_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
	dev-libs/boost[python]
	test? (
		ros-jazzy/ament_cmake_gtest
		dev-cpp/gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ros_environment
	ros-jazzy/rosidl_cmake
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
