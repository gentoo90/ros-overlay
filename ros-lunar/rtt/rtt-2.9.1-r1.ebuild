# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Orocos/RTT component framework"
HOMEPAGE="http://www.orocos.org/rtt"
SRC_URI="https://github.com/orocos-gbp/${PN}-release/archive/release/lunar/${PN}/2.9.1-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
	dev-libs/boost[python]
	net-misc/omniORB
	dev-perl/XML-XPath
"
DEPEND="${RDEPEND}
	dev-util/cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
