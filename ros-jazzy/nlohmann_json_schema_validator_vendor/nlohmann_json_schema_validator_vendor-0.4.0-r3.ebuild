# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="A vendor package for JSON schema validator for JSON for Modern C++"
HOMEPAGE="https://index.ros.org/p/nlohmann_json_schema_validator_vendor/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.4.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 MIT )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	dev-cpp/nlohmann_json
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
