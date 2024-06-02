# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Example usage of generate_parameter_library for a python module"
HOMEPAGE="https://index.ros.org/p/generate_parameter_module_example/#jazzy"
SRC_URI="https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/jazzy/${PN}/0.3.8-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/generate_parameter_library
	ros-jazzy/generate_parameter_library_py
	ros-jazzy/rclpy
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
