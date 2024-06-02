# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Library which provides the 3D rendering functionality in rviz."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/jazzy/${PN}/14.1.1-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND="
	ros-jazzy/ament_index_cpp
	ros-jazzy/resource_retriever
	ros-jazzy/rviz_assimp_vendor
	ros-jazzy/rviz_ogre_vendor
	dev-cpp/eigen
	dev-qt/qtcore:5
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qttest:5
	dev-qt/qtwidgets:5
	dev-qt/qtwidgets:5
	test? (
		ros-jazzy/ament_cmake_cppcheck
		ros-jazzy/ament_cmake_cpplint
		ros-jazzy/ament_cmake_gmock
		ros-jazzy/ament_cmake_gtest
		ros-jazzy/ament_cmake_lint_cmake
		ros-jazzy/ament_cmake_uncrustify
		ros-jazzy/ament_cmake_xmllint
		ros-jazzy/ament_lint_auto
		ros-jazzy/rviz_assimp_vendor
	)
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake_ros
	ros-jazzy/eigen3_cmake_module
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
