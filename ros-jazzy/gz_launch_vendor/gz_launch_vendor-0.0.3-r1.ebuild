# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Vendor package for: gz-launch7 7.1.0\
\
    Gazebo Launch : Run and manage [...]"
HOMEPAGE="https://github.com/gazebosim/gz-launch"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.0.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/gz_cmake_vendor
	ros-jazzy/gz_common_vendor
	ros-jazzy/gz_fuel_tools_vendor
	ros-jazzy/gz_gui_vendor
	ros-jazzy/gz_math_vendor
	ros-jazzy/gz_msgs_vendor
	ros-jazzy/gz_physics_vendor
	ros-jazzy/gz_plugin_vendor
	ros-jazzy/gz_rendering_vendor
	ros-jazzy/gz_sensors_vendor
	ros-jazzy/gz_sim_vendor
	ros-jazzy/gz_tools_vendor
	ros-jazzy/gz_transport_vendor
	ros-jazzy/sdformat_vendor
	dev-cpp/gflags
	dev-libs/libyaml
	dev-libs/ossp-uuid
	dev-libs/tinyxml2
	net-libs/libwebsockets
	sys-devel/binutils
	x11-libs/libXi
	x11-libs/libXmu
	test? (
		ros-jazzy/ament_cmake_copyright
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_xmllint
		x11-misc/xvfb-run
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_core
	ros-jazzy/ament_cmake_test
	ros-jazzy/ament_cmake_vendor_package
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
