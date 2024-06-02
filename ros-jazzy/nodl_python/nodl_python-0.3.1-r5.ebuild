# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Implementation of the NoDL API in Python."
HOMEPAGE="https://index.ros.org/p/nodl_python/#jazzy"
SRC_URI="https://github.com/ros2-gbp/nodl-release/archive/release/jazzy/${PN}/0.3.1-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	dev-python/lxml
	test? (
		ros-jazzy/ament_flake8
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/ament_mypy
		dev-python/pytest
		dev-python/pytest-mock
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
