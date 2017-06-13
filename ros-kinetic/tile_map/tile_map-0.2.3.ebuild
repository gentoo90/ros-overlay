# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Tile map provides a slippy map style interface for visualizing 
     OpenStreetM"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/tile_map/0.2.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/mapviz
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/swri_math_util
    ros-kinetic/swri_transform_util
    ros-kinetic/swri_yaml_util
    ros-kinetic/tf
    dev-libs/jsoncpp
    dev-qt/qtcore:5
    dev-qt/qtgui:5
    dev-qt/qtnetwork:5
    dev-qt/qtopengl:5
    dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    dev-libs/jsoncpp
    dev-qt/qtopengl:5
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
