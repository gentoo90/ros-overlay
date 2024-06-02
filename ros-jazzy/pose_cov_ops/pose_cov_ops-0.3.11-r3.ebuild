# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="C++ library for SE\(2\)/SE\(3\) pose composition operations with uncertainty"
HOMEPAGE="https://wiki.ros.org/pose_cov_ops"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.3.11-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/mrpt2
	ros-jazzy/tf2
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		dev-cpp/gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_gmock
	ros-jazzy/ament_cmake_gtest
	ros-jazzy/ament_cmake_xmllint
	ros-jazzy/ros_environment
	dev-build/cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
