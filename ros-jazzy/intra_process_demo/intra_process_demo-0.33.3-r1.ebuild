# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Demonstrations of intra process communication."
HOMEPAGE="https://index.ros.org/p/intra_process_demo/#jazzy"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/jazzy/${PN}/0.33.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/rclcpp
	ros-jazzy/sensor_msgs
	media-libs/opencv
	test? (
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/launch
		ros-jazzy/launch_testing
		ros-jazzy/launch_testing_ament_cmake
		ros-jazzy/rmw_implementation_cmake
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/std_msgs
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
