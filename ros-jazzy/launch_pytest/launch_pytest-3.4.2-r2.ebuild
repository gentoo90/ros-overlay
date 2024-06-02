# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="A package to create tests which involve launch files and multiple processes."
HOMEPAGE="https://index.ros.org/p/launch_pytest/#jazzy"
SRC_URI="https://github.com/ros2-gbp/launch-release/archive/release/jazzy/${PN}/3.4.2-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/launch
	ros-jazzy/launch_testing
	ros-jazzy/osrf_pycommon
	dev-python/pytest
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
		ros-jazzy/launch
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
