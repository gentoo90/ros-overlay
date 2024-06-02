# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A WebSocket interface to rosbridge."
HOMEPAGE="http://ros.org/wiki/rosbridge_server"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/jazzy/${PN}/1.3.2-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclpy
	ros-jazzy/rosapi
	ros-jazzy/rosbridge_library
	ros-jazzy/rosbridge_msgs
	dev-python/twisted
	www-servers/tornado
	test? (
		ros-jazzy/launch
		ros-jazzy/launch_ros
		ros-jazzy/launch_testing
		ros-jazzy/launch_testing_ament_cmake
		ros-jazzy/launch_testing_ros
		ros-jazzy/std_srvs
		dev-python/autobahn
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
