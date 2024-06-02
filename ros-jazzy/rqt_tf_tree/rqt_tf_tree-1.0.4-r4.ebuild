# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-python

DESCRIPTION="rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree."
HOMEPAGE="http://wiki.ros.org/rqt_tf_tree"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.0.4-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/python_qt_binding
	ros-jazzy/qt_dotgraph
	ros-jazzy/rclpy
	ros-jazzy/rqt_graph
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_py
	ros-jazzy/tf2_msgs
	ros-jazzy/tf2_ros
	test? (
		dev-python/mock
	)
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
