# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/${PN}/3.6.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/camera_calibration_parsers
	ros-jazzy/cv_bridge
	ros-jazzy/geometry_msgs
	ros-jazzy/image_geometry
	ros-jazzy/image_transport
	ros-jazzy/message_filters
	ros-jazzy/nav_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rclpy
	ros-jazzy/std_msgs
	ros-jazzy/swri_geometry_util
	ros-jazzy/swri_math_util
	ros-jazzy/swri_opencv_util
	ros-jazzy/swri_roscpp
	ros-jazzy/tf2
	dev-cpp/eigen
	dev-libs/boost[python]
	test? (
		ros-jazzy/ament_cmake_gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
