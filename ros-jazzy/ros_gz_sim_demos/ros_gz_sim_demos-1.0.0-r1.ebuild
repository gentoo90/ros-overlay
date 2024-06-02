# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Demos using Gazebo Sim simulation with ROS."
HOMEPAGE="https://index.ros.org/p/ros_gz_sim_demos/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros_ign-release/archive/release/jazzy/${PN}/1.0.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/gz_sim_vendor
	ros-jazzy/image_transport_plugins
	ros-jazzy/robot_state_publisher
	ros-jazzy/ros_gz_bridge
	ros-jazzy/ros_gz_image
	ros-jazzy/ros_gz_sim
	ros-jazzy/rqt_image_view
	ros-jazzy/rqt_plot
	ros-jazzy/rqt_topic
	ros-jazzy/rviz2
	ros-jazzy/sdformat_urdf
	ros-jazzy/xacro
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
