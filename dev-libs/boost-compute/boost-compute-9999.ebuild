# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils cmake-utils git-r3

DESCRIPTION="A header-only C++ Computing Library for OpenCL"
HOMEPAGE="https://github.com/boostorg/compute"
EGIT_REPO_URI="https://github.com/boostorg/compute.git git://github.com/boostorg/compute.git"
KEYWORDS=""

LICENSE="Boost-1.0"
SLOT="0"

PATCHES=(
	"${FILESDIR}/${PN}"-0.4-Fix-install-destination-of-headers.patch
)

RDEPEND="
	dev-libs/boost
	virtual/opencl
"
DEPEND="${RDEPEND}"
