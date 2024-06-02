# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="ROS1 and ROS2 drivers for metavision based event cameras"
HOMEPAGE="https://index.ros.org/p/metavision_driver/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.0.8-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/event_camera_msgs
	ros-jazzy/rclcpp
	ros-jazzy/rclcpp_components
	ros-jazzy/std_srvs
	dev-games/openscenegraph
	dev-libs/boost[python]
	media-libs/glew
	media-libs/glfw
	media-libs/opencv
	sci-libs/hdf5
	virtual/ffmpeg
	virtual/libusb:1
	test? (
		ros-jazzy/ament_cmake_clang_format
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_cmake_cpplint
		ros-jazzy/ament_cmake_flake8
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_pep257
		ros-jazzy/ament_cmake_xmllint
		dev-cpp/gtest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ament_cmake_auto
	ros-jazzy/ament_cmake_ros
	ros-jazzy/ros_environment
	app-arch/unzip
	dev-build/cmake
	dev-vcs/git
	net-misc/curl
	net-misc/wget
	sci-libs/hdf5
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
