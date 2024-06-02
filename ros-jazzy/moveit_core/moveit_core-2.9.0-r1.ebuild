# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Core libraries used by MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/${PN}/2.9.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/angles
	ros-jazzy/common_interfaces
	ros-jazzy/eigen_stl_containers
	ros-jazzy/generate_parameter_library
	ros-jazzy/geometric_shapes
	ros-jazzy/geometry_msgs
	ros-jazzy/google_benchmark_vendor
	ros-jazzy/kdl_parser
	ros-jazzy/moveit_common
	ros-jazzy/moveit_msgs
	ros-jazzy/octomap
	ros-jazzy/octomap_msgs
	ros-jazzy/pluginlib
	ros-jazzy/random_numbers
	ros-jazzy/rclcpp
	ros-jazzy/rsl
	ros-jazzy/ruckig
	ros-jazzy/sensor_msgs
	ros-jazzy/shape_msgs
	ros-jazzy/srdfdom
	ros-jazzy/std_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_eigen
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_kdl
	ros-jazzy/trajectory_msgs
	ros-jazzy/urdf
	ros-jazzy/urdfdom
	ros-jazzy/urdfdom_headers
	ros-jazzy/visualization_msgs
	dev-cpp/eigen
	dev-libs/boost[python]
	media-libs/assimp
	sci-libs/fcl
	sci-physics/bullet
	test? (
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_cmake_google_benchmark
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_index_cpp
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/angles
		ros-jazzy/launch_testing_ament_cmake
		ros-jazzy/moveit_resources_panda_moveit_config
		ros-jazzy/moveit_resources_pr2_description
		ros-jazzy/orocos_kdl_vendor
		ros-jazzy/rcl_interfaces
		ros-jazzy/rclpy
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/eigen3_cmake_module
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
