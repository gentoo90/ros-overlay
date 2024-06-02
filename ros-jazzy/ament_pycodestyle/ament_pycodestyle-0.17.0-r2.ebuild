# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="The ability to check code against the style conventions in PEP 8 and\
    g[...]"
HOMEPAGE="https://index.ros.org/p/ament_pycodestyle/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/${PN}/0.17.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	dev-python/pycodestyle
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
