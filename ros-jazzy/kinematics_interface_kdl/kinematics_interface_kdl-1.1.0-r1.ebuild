# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="KDL implementation of ros2_control kinematics interface"
HOMEPAGE="https://index.ros.org/p/kinematics_interface_kdl/#jazzy"
SRC_URI="https://github.com/ros2-gbp/kinematics_interface-release/archive/release/jazzy/${PN}/1.1.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/kdl_parser
	ros-jazzy/kinematics_interface
	ros-jazzy/pluginlib
	ros-jazzy/tf2_eigen_kdl
	dev-cpp/eigen
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ros2_control_test_assets
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/eigen3_cmake_module
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
