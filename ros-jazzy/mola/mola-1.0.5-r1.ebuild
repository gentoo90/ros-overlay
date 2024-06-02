# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_10,3_11,3_12} )

inherit ament-cmake

DESCRIPTION="Metapackage with all core open-sourced MOLA packages."
HOMEPAGE="https://index.ros.org/p/mola/#jazzy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/jazzy/${PN}/1.0.5-1.tar.gz -> ${PN}-jazzy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"
RDEPEND="
	ros-jazzy/ament_lint_auto
	ros-jazzy/ament_lint_common
	ros-jazzy/kitti_metrics_eval
	ros-jazzy/mola_bridge_ros2
	ros-jazzy/mola_demos
	ros-jazzy/mola_imu_preintegration
	ros-jazzy/mola_input_euroc_dataset
	ros-jazzy/mola_input_kitti360_dataset
	ros-jazzy/mola_input_kitti_dataset
	ros-jazzy/mola_input_mulran_dataset
	ros-jazzy/mola_input_paris_luco_dataset
	ros-jazzy/mola_input_rawlog
	ros-jazzy/mola_input_rosbag2
	ros-jazzy/mola_kernel
	ros-jazzy/mola_launcher
	ros-jazzy/mola_metric_maps
	ros-jazzy/mola_navstate_fuse
	ros-jazzy/mola_pose_list
	ros-jazzy/mola_relocalization
	ros-jazzy/mola_traj_tools
	ros-jazzy/mola_viz
	ros-jazzy/mola_yaml
"
DEPEND="${RDEPEND}
	ros-jazzy/ament_cmake
"

SLOT="0"
ROS_DISTRO="jazzy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
