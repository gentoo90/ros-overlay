# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A package containing some 3D vision related message definitions in the socc[...]"
HOMEPAGE="https://index.ros.org/p/soccer_vision_3d_msgs/#jazzy"
SRC_URI="https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/jazzy/${PN}/1.0.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/soccer_vision_attribute_msgs
	ros-jazzy/vision_msgs
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/rosidl_default_generators
	ros-jazzy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
