# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Python library for loading moveit config parameters in launch files"
HOMEPAGE="https://index.ros.org/p/moveit_configs_utils/#jazzy"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/launch
	ros-jazzy/launch_param_builder
	ros-jazzy/launch_ros
	ros-jazzy/srdfdom
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
