# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8

MY_PN="rti_connext_dds"
MY_P="${MY_PN}-${PV}"

inherit unpacker

DESCRIPTION="Real-time messaging and integration platform"
HOMEPAGE="https://www.rti.com/"
SRC_URI="http://packages.ros.org/ros2/ubuntu/pool/main/r/${P}/${P}_${PV}.25-1_amd64.deb"

LICENSE="RTI"
SLOT="${PV}"
KEYWORDS="~amd64"
RESTRICT="mirror strip bindist"

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

QA_PREBUILT="/opt/rti.com/${MY_P}/*"

src_unpack() {
	unpack_deb ${A}
}

src_prepare() {
	gunzip usr/share/doc/${P}/changelog.Debian.gz || die
	eapply_user
}

src_install() {
	mv */ "${D}" || die
}
