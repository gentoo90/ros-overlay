# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Python bindings for the rmf_fleet_adapter"
HOMEPAGE="https://index.ros.org/p/rmf_fleet_adapter_python/#jazzy"
SRC_URI="https://github.com/ros2-gbp/rmf_ros2-release/archive/release/jazzy/${PN}/2.6.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/pybind11_json_vendor
	ros-jazzy/pybind11_vendor
	ros-jazzy/rclpy
	ros-jazzy/rmf_fleet_adapter
	test? (
		ros-jazzy/ament_cmake_pytest
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
