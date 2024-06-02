# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This package provides the Behavior Trees core library."
HOMEPAGE="https://index.ros.org/p/behaviortree_cpp_v3/#jazzy"
SRC_URI="https://github.com/ros2-gbp/behaviortree_cpp-release/archive/release/jazzy/${PN}/3.8.6-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/rclcpp
	dev-libs/boost[python]
	net-libs/cppzmq
	sys-libs/ncurses
	test? (
		ros-jazzy/ament_cmake_gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ros_environment
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
