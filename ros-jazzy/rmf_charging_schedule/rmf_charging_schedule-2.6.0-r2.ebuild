# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Node for a fixed 24-hour rotating charger usage schedule"
HOMEPAGE="https://index.ros.org/p/rmf_charging_schedule/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rmf_ros2-release/archive/release/jazzy/${PN}/2.6.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/rclpy
	ros-jazzy/rmf_fleet_msgs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
