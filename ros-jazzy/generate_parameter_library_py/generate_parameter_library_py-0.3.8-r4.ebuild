# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="Python to generate ROS parameter library."
HOMEPAGE="https://index.ros.org/p/generate_parameter_library_py/#jazzy"
SRC_URI="https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/jazzy/${PN}/0.3.8-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	dev-lang/python
	dev-python/jinja
	dev-python/pyyaml
	dev-python/typeguard
	test? (
		ros-jazzy/ament_copyright
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
