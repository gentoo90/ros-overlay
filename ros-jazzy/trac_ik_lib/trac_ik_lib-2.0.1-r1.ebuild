# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="TRAC-IK is a faster, significantly more reliable drop-in replacement for\
 [...]"
HOMEPAGE="https://index.ros.org/p/trac_ik_lib/#jazzy"
SRC_URI="https://github.com/ros2-gbp/trac_ik-release/archive/release/jazzy/${PN}/2.0.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/kdl_parser
	ros-jazzy/rclcpp
	ros-jazzy/urdf
	dev-cpp/eigen
	sci-libs/nlopt
	sci-libs/nlopt
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
