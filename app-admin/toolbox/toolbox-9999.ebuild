# Copyright (c) 2014 CoreOS, Inc.. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=4
CROS_WORKON_PROJECT="coreos/toolbox"
CROS_WORKON_LOCALNAME="toolbox"
CROS_WORKON_REPO="git://github.com"

if [[ "${PV}" == 9999 ]]; then
	KEYWORDS="~amd64 ~arm64"
else
	CROS_WORKON_COMMIT="916489a887ea751c3998c464ee24b157c64e6d05"
	KEYWORDS="amd64 arm64"
fi

inherit cros-workon

DESCRIPTION="toolbox"
HOMEPAGE="https://github.com/coreos/toolbox"
SRC_URI=""

LICENSE="Apache-2.0"
SLOT="0"
IUSE=""

RDEPEND="app-emulation/rkt"

src_install() {
	dobin ${S}/toolbox
}
