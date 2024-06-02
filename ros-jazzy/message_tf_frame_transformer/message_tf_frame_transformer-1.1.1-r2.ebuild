# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Transforms messages of arbitrary type to a different frame using tf2::doTra[...]"
HOMEPAGE="https://index.ros.org/p/message_tf_frame_transformer/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.1.1-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/rclcpp
	ros-jazzy/ros_environment
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/tf2_sensor_msgs
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
