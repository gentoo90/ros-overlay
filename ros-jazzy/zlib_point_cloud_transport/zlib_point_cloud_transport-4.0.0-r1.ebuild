# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="zlib_point_cloud_transport provides a plugin to point_cloud_transport for s[...]"
HOMEPAGE="https://wiki.ros.org/draco_point_cloud_transport"
SRC_URI="https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/jazzy/${PN}/4.0.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/pluginlib
	ros-jazzy/point_cloud_interfaces
	ros-jazzy/point_cloud_transport
	ros-jazzy/rclcpp
	sys-libs/zlib
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
