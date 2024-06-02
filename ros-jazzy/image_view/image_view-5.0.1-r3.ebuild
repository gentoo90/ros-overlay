# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A simple viewer for ROS image topics. Includes a specialized viewer\
  for [...]"
HOMEPAGE="https://index.ros.org/p/image_view/github-ros-perception-image_pipeline/"
SRC_URI="https://github.com/ros2-gbp/image_pipeline-release/archive/release/jazzy/${PN}/5.0.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/camera_calibration_parsers
	ros-jazzy/cv_bridge
	ros-jazzy/image_transport
	ros-jazzy/message_filters
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rclpy
	ros-jazzy/sensor_msgs
	ros-jazzy/std_srvs
	ros-jazzy/stereo_msgs
	test? (
		ros-jazzy/ament_lint_auto
		ros-jazzy/ament_lint_common
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
