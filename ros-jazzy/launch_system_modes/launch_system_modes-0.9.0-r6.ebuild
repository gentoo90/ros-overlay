# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="System modes specific extensions to the launch tool, i.e. launch actions, e[...]"
HOMEPAGE="https://index.ros.org/p/launch_system_modes/#jazzy"
SRC_URI="https://github.com/ros2-gbp/system_modes-release/archive/release/jazzy/${PN}/0.9.0-6.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/launch
	ros-jazzy/osrf_pycommon
	ros-jazzy/rclpy
	ros-jazzy/system_modes_msgs
	dev-python/importlib-metadata
	dev-python/pyyaml
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
