# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="rqt_common_plugins metapackage provides ROS backend graphical tools suite t[...]"
HOMEPAGE="http://ros.org/wiki/rqt_common_plugins"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.2.0-4.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/rqt_action
	ros-jazzy/rqt_bag
	ros-jazzy/rqt_bag_plugins
	ros-jazzy/rqt_console
	ros-jazzy/rqt_graph
	ros-jazzy/rqt_image_view
	ros-jazzy/rqt_msg
	ros-jazzy/rqt_plot
	ros-jazzy/rqt_publisher
	ros-jazzy/rqt_py_common
	ros-jazzy/rqt_py_console
	ros-jazzy/rqt_reconfigure
	ros-jazzy/rqt_service_caller
	ros-jazzy/rqt_shell
	ros-jazzy/rqt_srv
	ros-jazzy/rqt_topic
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
