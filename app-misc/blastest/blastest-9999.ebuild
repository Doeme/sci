# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Test ebuild"
HOMEPAGE="http://example.org"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"

IUSE=""

BLAS_COMPAT=(refblas openblas)

REQUIRED_USE="$BLAS_REQ_USE"

inherit blas

RDEPEND="
	$BLAS_DEPEND
"

pkg_pretend(){
	einfo "${BLAS_USEDEP}"
}
