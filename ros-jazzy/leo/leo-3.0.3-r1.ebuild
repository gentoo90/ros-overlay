# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Metapackage of software for Leo Rover common to the robot and ROS desktop"
HOMEPAGE="http://wiki.ros.org/leo"
SRC_URI="https://github.com/ros2-gbp/${PN}_common-release/archive/release/jazzy/${PN}/3.0.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/leo_description
	ros-jazzy/leo_msgs
	ros-jazzy/leo_teleop
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
