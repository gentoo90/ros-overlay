# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Driver for the Phidgets Gyroscope devices"
HOMEPAGE="https://index.ros.org/p/phidgets_gyroscope/#jazzy"
SRC_URI="https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/${PN}/2.3.3-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/launch
	ros-jazzy/phidgets_api
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/std_srvs
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
