# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..12} pypy{,3} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Integration of pydocstyle and flake8 for combined linting and reporting"
HOMEPAGE="https://github.com/PyCQA/flake8-docstrings"
SRC_URI="https://github.com/PyCQA/${PN}/archive/${PV}.tar.gz -> ${P}-gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x64-solaris"

RDEPEND="
	dev-python/flake8[${PYTHON_USEDEP}]
	>=dev-python/pydocstyle-2.1[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"
