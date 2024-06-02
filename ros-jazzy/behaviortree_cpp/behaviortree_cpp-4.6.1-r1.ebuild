# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This package provides the Behavior Trees core library."
HOMEPAGE="https://index.ros.org/p/behaviortree_cpp/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}_v4-release/archive/release/jazzy/${PN}/4.6.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/rclcpp
	dev-db/sqlite:3
	net-libs/cppzmq
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
