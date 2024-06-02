# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This package contains generic definitions of geometric shapes and bodies."
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.1.3-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/console_bridge_vendor
	ros-jazzy/eigen_stl_containers
	ros-jazzy/geometry_msgs
	ros-jazzy/octomap
	ros-jazzy/random_numbers
	ros-jazzy/rclcpp
	ros-jazzy/resource_retriever
	ros-jazzy/rosidl_default_runtime
	ros-jazzy/shape_msgs
	ros-jazzy/visualization_msgs
	dev-cpp/eigen
	dev-libs/boost
	dev-libs/boost
	media-libs/assimp
	media-libs/qhull
	test? (
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_cmake
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/eigen3_cmake_module
	ros-jazzy/rosidl_default_generators
	dev-libs/boost[python]
	media-libs/assimp
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
