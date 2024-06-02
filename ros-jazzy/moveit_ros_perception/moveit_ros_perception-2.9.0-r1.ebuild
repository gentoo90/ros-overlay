# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Components of MoveIt connecting to perception"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/cv_bridge
	ros-jazzy/image_transport
	ros-jazzy/message_filters
	ros-jazzy/moveit_common
	ros-jazzy/moveit_core
	ros-jazzy/moveit_msgs
	ros-jazzy/moveit_ros_occupancy_map_monitor
	ros-jazzy/moveit_ros_planning
	ros-jazzy/object_recognition_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	ros-jazzy/urdf
	media-libs/freeglut
	media-libs/glew
	sys-libs/libomp
	virtual/opengl
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
