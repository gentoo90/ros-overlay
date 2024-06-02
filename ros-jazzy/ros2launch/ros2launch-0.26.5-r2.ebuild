# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="The launch command for ROS 2 command line tools."
HOMEPAGE="https://index.ros.org/p/ros2launch/#jazzy"
SRC_URI="https://github.com/ros2-gbp/launch_ros-release/archive/release/jazzy/${PN}/0.26.5-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/launch_xml
	ros-jazzy/launch_yaml
	ros-jazzy/ros2cli
	ros-jazzy/ros2pkg
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
