# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="C++ nodes which were previously in the ros2/examples repository but are now[...]"
HOMEPAGE="https://index.ros.org/p/demo_nodes_cpp/#jazzy"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/jazzy/${PN}/0.33.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/example_interfaces
	ros-jazzy/launch_ros
	ros-jazzy/launch_xml
	ros-jazzy/rcl
	ros-jazzy/rcl_interfaces
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rcpputils
	ros-jazzy/rcutils
	ros-jazzy/rmw
	ros-jazzy/std_msgs
	test? (
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
		ros-jazzy/launch
		ros-jazzy/launch_testing
		ros-jazzy/launch_testing_ament_cmake
		ros-jazzy/launch_testing_ros
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
