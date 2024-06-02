# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="rqt_bag provides a GUI plugin for displaying and replaying ROS bag files."
HOMEPAGE="http://wiki.ros.org/rqt_bag"
SRC_URI="https://github.com/ros2-gbp/rqt_bag-release/archive/release/jazzy/${PN}/1.5.3-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="( BSD HPND )"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/geometry_msgs
	ros-jazzy/rclpy
	ros-jazzy/rosbag2
	ros-jazzy/rqt_bag
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_py
	ros-jazzy/rqt_plot
	ros-jazzy/sensor_msgs
	ros-jazzy/std_msgs
	dev-python/pillow
	dev-python/pycairo
	test? (
		dev-python/pytest
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
