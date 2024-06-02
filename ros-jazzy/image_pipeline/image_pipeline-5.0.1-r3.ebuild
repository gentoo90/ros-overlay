# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="image_pipeline fills the gap between getting raw images from a camera drive[...]"
HOMEPAGE="https://index.ros.org/p/image_pipeline/github-ros-perception-image_pipeline/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/5.0.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/camera_calibration
	ros-jazzy/depth_image_proc
	ros-jazzy/image_proc
	ros-jazzy/image_publisher
	ros-jazzy/image_rotate
	ros-jazzy/image_view
	ros-jazzy/stereo_image_proc
	test? (
		ros-jazzy/ament_cmake_lint_cmake
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
