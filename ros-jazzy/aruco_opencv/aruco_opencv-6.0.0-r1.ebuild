# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ArUco marker detection using aruco module from OpenCV libraries."
HOMEPAGE="https://index.ros.org/p/aruco_opencv/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/6.0.0-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/aruco_opencv_msgs
	ros-jazzy/cv_bridge
	ros-jazzy/image_transport
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/rclcpp_lifecycle
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	dev-cpp/yaml-cpp
	dev-python/numpy
	media-gfx/img2pdf
	media-libs/opencv[python]
	test? (
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_cpplint
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_lint_auto
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
