# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Wrapper around PyKDL, providing nothing but a dependency on PyKDL on some s[...]"
HOMEPAGE="https://github.com/orocos/orocos_kinematics_dynamics"
SRC_URI="https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/jazzy/${PN}/0.5.1-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 LGPL-2.1-or-later )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/orocos_kdl_vendor
	ros-jazzy/pybind11_vendor
	dev-python/python_orocos_kdl
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_python
	ros-jazzy/python_cmake_module
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
