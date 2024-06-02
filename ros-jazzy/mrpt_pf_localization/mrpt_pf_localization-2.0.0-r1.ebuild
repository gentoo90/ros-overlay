# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Package for robot 2D self-localization using dynamic or static \(MRPT or RO[...]"
HOMEPAGE="https://github.com/mrpt-ros-pkg/mrpt_navigation"
SRC_URI="https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/${PN}/2.0.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_lint_auto
	ros-jazzy/ament_lint_common
	ros-jazzy/mola_relocalization
	ros-jazzy/mp2p_icp
	ros-jazzy/mrpt2
	ros-jazzy/mrpt_msgs
	ros-jazzy/mrpt_msgs_bridge
	ros-jazzy/nav_msgs
	ros-jazzy/pose_cov_ops
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_geometry_msgs
	test? (
		ros-jazzy/mrpt_tutorials
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
