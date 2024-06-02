# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="The test command for ROS 2 launch tests."
HOMEPAGE="https://index.ros.org/p/ros2test/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros_testing-release/archive/release/jazzy/${PN}/0.6.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/domain_coordinator
	ros-jazzy/launch
	ros-jazzy/launch_ros
	ros-jazzy/launch_testing
	ros-jazzy/launch_testing_ros
	ros-jazzy/ros2cli
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
