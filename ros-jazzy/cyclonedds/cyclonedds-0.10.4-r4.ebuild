# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ros-cmake

DESCRIPTION="Eclipse Cyclone DDS is a very performant and robust open-source DDS impleme[...]"
HOMEPAGE="https://projects.eclipse.org/projects/iot.cyclonedds"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/0.10.4-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( EPL-2.0 Eclipse-Distribution-License-1.0 )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/iceoryx_binding_c
	ros-jazzy/iceoryx_hoofs
	ros-jazzy/iceoryx_posh
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	dev-build/cmake
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

PATCHES=(
	"${FILESDIR}/0.10.4-dont-install-readme.patch"
)
