# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6


BLAS_COMPAT_ALL=1
inherit toolchain-funcs blas

DESCRIPTION="C++ library for non-linear optimization"
HOMEPAGE="https://software.sandia.gov/opt++/"
SRC_URI="${HOMEPAGE}/downloads/${P}.tar.gz"

LICENSE="LGPL-2"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
SLOT="0"
IUSE="doc mpi static-libs"

RDEPEND="
	mpi? ( virtual/mpi )"
DEPEND="${RDEPEND}
	virtual/pkgconfig"
	
	
src_configure() {
	local myeconfargs=(
		--with-blas="$($(tc-getPKG_CONFIG) --libs blas)"
		$(use_enable mpi)
		$(use_enable static-libs static)
		--enable-shared
	)
	econf "${myeconfargs[@]}"
}
