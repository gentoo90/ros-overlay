# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="DataTamer data logging library"
HOMEPAGE="https://index.ros.org/p/data_tamer_cpp/#jazzy"
SRC_URI="https://github.com/ros2-gbp/data_tamer-release/archive/release/jazzy/${PN}/0.9.4-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/data_tamer_msgs
	ros-jazzy/mcap_vendor
	ros-jazzy/rclcpp
	test? (
		ros-jazzy/ament_cmake_gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
