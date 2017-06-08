# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="ROS communications-related packages, including core client libraries (roscpp, ro"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/ros_comm/1.12.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/message_filters
    ros-kinetic/ros
    ros-kinetic/rosbag
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/rosgraph
    ros-kinetic/rosgraph_msgs
    ros-kinetic/roslaunch
    ros-kinetic/roslisp
    ros-kinetic/rosmaster
    ros-kinetic/rosmsg
    ros-kinetic/rosnode
    ros-kinetic/rosout
    ros-kinetic/rosparam
    ros-kinetic/rospy
    ros-kinetic/rosservice
    ros-kinetic/rostest
    ros-kinetic/rostopic
    ros-kinetic/roswtf
    ros-kinetic/std_srvs
    ros-kinetic/topic_tools
    ros-kinetic/xmlrpcpp
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-kinetic
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}