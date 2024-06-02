# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Meta-package aggregating the ros2_canopen packages and documentation"
HOMEPAGE="https://index.ros.org/p/canopen/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ros2_${PN}-release/archive/release/jazzy/${PN}/0.2.9-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/canopen_402_driver
	ros-jazzy/canopen_base_driver
	ros-jazzy/canopen_core
	ros-jazzy/canopen_interfaces
	ros-jazzy/canopen_proxy_driver
	ros-jazzy/lely_core_libraries
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
