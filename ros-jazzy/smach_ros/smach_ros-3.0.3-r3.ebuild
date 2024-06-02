# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="The smach_ros package contains extensions for the SMACH library to\
    int[...]"
HOMEPAGE="https://index.ros.org/p/smach_ros/#jazzy"
SRC_URI="https://github.com/ros2-gbp/executive_smach-release/archive/release/jazzy/${PN}/3.0.3-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/rclpy
	ros-jazzy/smach
	ros-jazzy/smach_msgs
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
