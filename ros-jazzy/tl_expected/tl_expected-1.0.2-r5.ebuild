# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="C++11/14/17 std::expected with functional-style extensions"
HOMEPAGE="https://github.com/TartanLlama/expected"
SRC_URI="https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/jazzy/${PN}/1.0.2-5.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Creative-Commons-Zero-v1.0-Universal"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
