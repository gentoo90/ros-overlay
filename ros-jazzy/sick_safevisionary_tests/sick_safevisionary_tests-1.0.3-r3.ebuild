# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Integration tests for the Sick SafeVisionary2 driver"
HOMEPAGE="https://index.ros.org/p/sick_safevisionary_tests/#jazzy"
SRC_URI="https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/jazzy/${PN}/1.0.3-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	test? (
		ros-jazzy/launch
		ros-jazzy/launch_ros
		ros-jazzy/launch_testing_ament_cmake
		ros-jazzy/sick_safevisionary_driver
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
