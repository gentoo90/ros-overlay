# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Provides an interface to read the sensor output of a SICK Safevisionary sen[...]"
HOMEPAGE="https://index.ros.org/p/sick_safevisionary_driver/#jazzy"
SRC_URI="https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/jazzy/${PN}/1.0.3-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/cv_bridge
	ros-jazzy/lifecycle_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/sensor_msgs
	ros-jazzy/sick_safevisionary_base
	ros-jazzy/sick_safevisionary_interfaces
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
