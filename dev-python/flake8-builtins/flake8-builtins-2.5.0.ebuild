# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..12} pypy{,3} )
DISTUTILS_USE_PEP517=hatchling

inherit distutils-r1

DESCRIPTION="Check for python builtins being used as variables or parameters"
HOMEPAGE="https://github.com/gforcada/flake8-builtins"
SRC_URI="https://github.com/gforcada/${PN}/archive/${PV}.tar.gz -> ${P}-gh.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x64-solaris"
IUSE="test"

RDEPEND="dev-python/flake8[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

distutils_enable_tests pytest
