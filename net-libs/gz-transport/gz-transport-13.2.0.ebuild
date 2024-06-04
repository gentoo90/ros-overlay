# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..12} )
CMAKE_BUILD_TYPE=RelWithDebInfo

inherit cmake python-single-r1

DESCRIPTION="Transport library for component communication based on publication/subscription and service calls"
HOMEPAGE="https://github.com/gazebosim/gz-transport"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-transport/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE="python"
REQUIRED_USE="python? ( ${PYTHON_REQUIRED_USE} )"

RDEPEND="
	dev-db/sqlite:3
	dev-libs/protobuf:=
	net-libs/cppzmq
	net-libs/gz-msgs:10=
	>=net-libs/zeromq-4.2.0:=
	sys-apps/util-linux
	sci-electronics/gz-tools:2
	python? ( ${PYTHON_DEPS} )"
DEPEND="${RDEPEND}
	dev-build/gz-cmake:3"
BDEPEND="
	dev-build/gz-cmake:3
	virtual/pkgconfig
	python? (
		$(python_gen_cond_dep '
			dev-python/pybind11[${PYTHON_USEDEP}]
		')
	)"

src_configure() {
	local mycmakeargs=(
		-DSKIP_PYBIND11=$(usex python OFF ON)
		-DUSE_SYSTEM_PATHS_FOR_PYTHON_INSTALLATION=ON
		-DPython3_EXECUTABLE="${PYTHON}"
	)
	cmake_src_configure
}
