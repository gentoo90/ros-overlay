# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="The ability to check code for style and syntax conventions with flake8."
HOMEPAGE="https://index.ros.org/p/ament_flake8/#jazzy"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/${PN}/0.17.0-2.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_lint
	dev-python/flake8
	dev-python/flake8-builtins
	dev-python/flake8-comprehensions
	dev-python/flake8-docstrings
	dev-python/flake8-import-order
	dev-python/flake8-quotes
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
