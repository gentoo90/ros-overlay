# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="camera_calibration allows easy calibration of monocular or stereo\
     cam[...]"
HOMEPAGE="https://index.ros.org/p/camera_calibration/github-ros-perception-image_pipeline/"
SRC_URI="https://github.com/ros2-gbp/image_pipeline-release/archive/release/jazzy/${PN}/5.0.1-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/cv_bridge
	ros-jazzy/image_geometry
	ros-jazzy/message_filters
	ros-jazzy/rclpy
	ros-jazzy/sensor_msgs
	ros-jazzy/std_srvs
	media-libs/opencv[python]
	test? (
		ros-jazzy/ament_copyright
		ros-jazzy/ament_flake8
		ros-jazzy/ament_pep257
		dev-python/pytest
		dev-python/requests
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
