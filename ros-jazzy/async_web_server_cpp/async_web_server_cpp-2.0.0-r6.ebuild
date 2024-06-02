# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Asynchronous Web/WebSocket Server in C++"
HOMEPAGE="http://ros.org/wiki/async_web_server_cpp"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.0.0-6.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	dev-libs/boost[python]
	test? (
		ros-jazzy/launch_testing
		dev-python/websocket-client
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
