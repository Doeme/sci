# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils cmake-utils

DESCRIPTION="A header-only C++ Computing Library for OpenCL"
HOMEPAGE="https://github.com/boostorg/compute"
SRC_URI="https://github.com/boostorg/compute/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64"
S="${WORKDIR}/compute-${PV}"

LICENSE="Boost-1.0"
SLOT="0"

PATCHES=(
	"${FILESDIR}/${P}"-Fix-install-destination-of-headers.patch
	"${FILESDIR}/${P}"-CMakeLists.patch
)


RDEPEND="
	dev-libs/boost
	virtual/opencl
"
DEPEND="${RDEPEND}"
