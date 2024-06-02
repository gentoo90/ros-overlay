# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/2.3.0-3.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/cv_bridge
	ros-jazzy/geometry_msgs
	ros-jazzy/image_transport
	ros-jazzy/mapviz_interfaces
	ros-jazzy/marti_common_msgs
	ros-jazzy/pluginlib
	ros-jazzy/rclcpp
	ros-jazzy/rqt_gui
	ros-jazzy/rqt_gui_cpp
	ros-jazzy/std_srvs
	ros-jazzy/swri_math_util
	ros-jazzy/swri_transform_util
	ros-jazzy/tf2
	ros-jazzy/tf2_geometry_msgs
	ros-jazzy/tf2_ros
	dev-cpp/yaml-cpp
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
	media-libs/freeglut
	media-libs/glew
	x11-libs/libXi
	x11-libs/libXmu
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
	ros-jazzy/ros_environment
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
