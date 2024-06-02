# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="\`image_geometry\` contains C++ and Python libraries for interpreting image[...]"
HOMEPAGE="http://www.ros.org/wiki/image_geometry"
SRC_URI="https://github.com/ros2-gbp/vision_opencv-release/archive/release/jazzy/${PN}/4.0.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/sensor_msgs
	media-libs/opencv
	test? (
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_pytest
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_python
	ros-jazzy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
