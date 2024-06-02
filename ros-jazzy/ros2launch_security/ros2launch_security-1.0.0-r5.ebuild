# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Security extensions for ros2 launch"
HOMEPAGE="https://index.ros.org/p/ros2launch_security/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.0.0-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/nodl_python
	ros-jazzy/ros2launch
	ros-jazzy/sros2
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
		ros-jazzy/demo_nodes_py
		ros-jazzy/launch_ros
		ros-jazzy/ros2launch
		ros-jazzy/sros2
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
