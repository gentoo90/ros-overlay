# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Meta package for rosbag2 related packages"
HOMEPAGE="https://index.ros.org/p/rosbag2/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.26.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ros2bag
	ros-jazzy/rosbag2_compression
	ros-jazzy/rosbag2_compression_zstd
	ros-jazzy/rosbag2_cpp
	ros-jazzy/rosbag2_py
	ros-jazzy/rosbag2_storage
	ros-jazzy/rosbag2_storage_default_plugins
	ros-jazzy/rosbag2_transport
	ros-jazzy/shared_queues_vendor
	test? (
		ros-jazzy/rosbag2_test_common
		ros-jazzy/rosbag2_tests
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
