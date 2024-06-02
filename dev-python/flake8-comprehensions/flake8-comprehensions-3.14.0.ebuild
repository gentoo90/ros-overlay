# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..12} pypy{,3} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="A flake8 plugin to help you write better list/set/dict comprehensions."
HOMEPAGE="https://github.com/adamchainz/flake8-comprehensions"
SRC_URI="https://github.com/adamchainz/${PN}/archive/${PV}.tar.gz -> ${P}-gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x64-solaris"
IUSE="test"

RDEPEND="dev-python/flake8[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

distutils_enable_tests pytest
