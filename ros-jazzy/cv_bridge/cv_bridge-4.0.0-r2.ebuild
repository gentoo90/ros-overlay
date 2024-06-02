# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="This contains CvBridge, which converts between ROS2\
    Image messages and[...]"
HOMEPAGE="http://www.ros.org/wiki/cv_bridge"
SRC_URI="https://github.com/ros2-gbp/vision_opencv-release/archive/release/jazzy/${PN}/4.0.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_python
	ros-jazzy/rclcpp
	ros-jazzy/rcpputils
	ros-jazzy/sensor_msgs
	dev-libs/boost[python]
	dev-python/numpy
	media-libs/opencv
	media-libs/opencv[python]
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_pytest
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	ros-jazzy/python_cmake_module
	dev-libs/boost
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
