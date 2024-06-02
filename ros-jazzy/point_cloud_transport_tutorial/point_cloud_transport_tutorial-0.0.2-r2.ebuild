# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Tutorial for point_cloud_transport."
HOMEPAGE="https://index.ros.org/p/point_cloud_transport_tutorial/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.0.2-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/point_cloud_transport
	ros-jazzy/point_cloud_transport_plugins
	ros-jazzy/rclcpp
	ros-jazzy/rcpputils
	ros-jazzy/rosbag2_cpp
	ros-jazzy/sensor_msgs
	test? (
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_cmake_cpplint
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_cmake_xmllint
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
