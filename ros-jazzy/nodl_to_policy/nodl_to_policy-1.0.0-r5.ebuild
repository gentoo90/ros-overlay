# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Package to generate a ROS 2 Access Control Policy from the NoDL description[...]"
HOMEPAGE="https://index.ros.org/p/nodl_to_policy/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.0.0-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/nodl_python
	ros-jazzy/ros2cli
	ros-jazzy/ros2nodl
	ros-jazzy/ros2run
	ros-jazzy/sros2
	dev-python/argcomplete
	dev-python/lxml
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_mypy
		ros-jazzy/ament_pep257
		ros-jazzy/ament_pycodestyle
		ros-jazzy/ros_testing
		ros-jazzy/test_msgs
		dev-python/pytest
		dev-python/pytest-mock
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
