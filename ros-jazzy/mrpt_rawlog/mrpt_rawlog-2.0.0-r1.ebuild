# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Nodes and programs to record and play MRPT rawlogs or to transform between [...]"
HOMEPAGE="https://index.ros.org/p/mrpt_rawlog/#jazzy"
SRC_URI="https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/${PN}/2.0.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_lint_auto
	ros-jazzy/ament_lint_common
	ros-jazzy/cv_bridge
	ros-jazzy/mrpt2
	ros-jazzy/mrpt_msgs
	ros-jazzy/nav_msgs
	ros-jazzy/rosbag2_cpp
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_msgs
	ros-jazzy/tf2_ros
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
