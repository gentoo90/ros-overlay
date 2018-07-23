# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The configuration node loads a given launch configuration and offers servic[...]"
HOMEPAGE="http://ros.org/wiki/default_cfg_fkie"
SRC_URI="https://github.com/fkie-release/multimaster_fkie-release/archive/release/melodic/${PN}/0.8.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/multimaster_msgs_fkie
	ros-melodic/roslaunch
	ros-melodic/roslib
	ros-melodic/rospy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
