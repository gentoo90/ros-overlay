# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="PCL \(Point Cloud Library\) ROS interface stack. PCL-ROS is the preferred\
[...]"
HOMEPAGE="http://ros.org/wiki/perception_pcl"
SRC_URI="https://github.com/ros2-gbp/perception_pcl-release/archive/release/jazzy/${PN}/2.6.1-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/pcl_conversions
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/sensor_msgs
	ros-jazzy/tf2
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	dev-cpp/eigen
	sci-libs/pcl
	sci-libs/pcl
	sci-libs/pcl
	sci-libs/pcl
	sci-libs/pcl
	sci-libs/pcl
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/launch
		ros-jazzy/launch_ros
		ros-jazzy/launch_testing
		ros-jazzy/launch_testing_ros
		ros-jazzy/sensor_msgs
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
