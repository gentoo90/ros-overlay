# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Messages for rclcpp_cascade_lifecycle package"
HOMEPAGE="https://index.ros.org/p/cascade_lifecycle_msgs/#jazzy"
SRC_URI="https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/jazzy/${PN}/2.0.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/builtin_interfaces
	ros-jazzy/lifecycle_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rosidl_default_generators
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
