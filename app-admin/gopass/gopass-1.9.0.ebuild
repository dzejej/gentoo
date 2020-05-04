# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module bash-completion-r1

EGO_SUM=(
	"github.com/BurntSushi/toml v0.3.1"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/DATA-DOG/go-sqlmock v1.3.3"
	"github.com/DATA-DOG/go-sqlmock v1.3.3/go.mod"
	"github.com/alecthomas/binary v0.0.0-20190922233330-fb1b1d9c299c"
	"github.com/alecthomas/binary v0.0.0-20190922233330-fb1b1d9c299c/go.mod"
	"github.com/atotto/clipboard v0.1.2"
	"github.com/atotto/clipboard v0.1.2/go.mod"
	"github.com/blang/semver v0.0.0-20190414182527-1a9109f8c4a1"
	"github.com/blang/semver v0.0.0-20190414182527-1a9109f8c4a1/go.mod"
	"github.com/cenkalti/backoff v2.2.1+incompatible"
	"github.com/cenkalti/backoff v2.2.1+incompatible/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0-20190314233015-f79a8a8ca69d"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0-20190314233015-f79a8a8ca69d/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/dominikschulz/github-releases v0.0.2"
	"github.com/dominikschulz/github-releases v0.0.2/go.mod"
	"github.com/doronbehar/gocui v0.4.2"
	"github.com/doronbehar/gocui v0.4.2/go.mod"
	"github.com/doronbehar/termbox-go v0.0.0-20191006141301-8c9470559e05"
	"github.com/doronbehar/termbox-go v0.0.0-20191006141301-8c9470559e05/go.mod"
	"github.com/fatih/color v1.9.0"
	"github.com/fatih/color v1.9.0/go.mod"
	"github.com/gdamore/encoding v1.0.0"
	"github.com/gdamore/encoding v1.0.0/go.mod"
	"github.com/gdamore/tcell v1.3.0"
	"github.com/gdamore/tcell v1.3.0/go.mod"
	"github.com/godbus/dbus v0.0.0-20190623212516-8a1682060722"
	"github.com/godbus/dbus v0.0.0-20190623212516-8a1682060722/go.mod"
	"github.com/gokyle/twofactor v1.0.1"
	"github.com/gokyle/twofactor v1.0.1/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1.0.20200221234624-67d41d38c208/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.2/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.4.0.20200313231945-b860323f09d0/go.mod"
	"github.com/golang/protobuf v1.4.0"
	"github.com/golang/protobuf v1.4.0/go.mod"
	"github.com/google/go-cmp v0.3.0"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-cmp v0.3.1"
	"github.com/google/go-cmp v0.3.1/go.mod"
	"github.com/google/go-cmp v0.4.0"
	"github.com/google/go-cmp v0.4.0/go.mod"
	"github.com/hashicorp/errwrap v1.0.0"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/go-multierror v1.1.0"
	"github.com/hashicorp/go-multierror v1.1.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.4"
	"github.com/hashicorp/golang-lru v0.5.4/go.mod"
	"github.com/jsimonetti/pwscheme v0.0.0-20160922125227-76804708ecad"
	"github.com/jsimonetti/pwscheme v0.0.0-20160922125227-76804708ecad/go.mod"
	"github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51"
	"github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/lucasb-eyer/go-colorful v1.0.2"
	"github.com/lucasb-eyer/go-colorful v1.0.2/go.mod"
	"github.com/lucasb-eyer/go-colorful v1.0.3"
	"github.com/lucasb-eyer/go-colorful v1.0.3/go.mod"
	"github.com/martinhoefling/goxkcdpwgen v0.0.0-20190331205820-7dc3d102eca3"
	"github.com/martinhoefling/goxkcdpwgen v0.0.0-20190331205820-7dc3d102eca3/go.mod"
	"github.com/mattn/go-colorable v0.1.4"
	"github.com/mattn/go-colorable v0.1.4/go.mod"
	"github.com/mattn/go-colorable v0.1.6"
	"github.com/mattn/go-colorable v0.1.6/go.mod"
	"github.com/mattn/go-isatty v0.0.8"
	"github.com/mattn/go-isatty v0.0.8/go.mod"
	"github.com/mattn/go-isatty v0.0.11"
	"github.com/mattn/go-isatty v0.0.11/go.mod"
	"github.com/mattn/go-isatty v0.0.12"
	"github.com/mattn/go-isatty v0.0.12/go.mod"
	"github.com/mattn/go-runewidth v0.0.4"
	"github.com/mattn/go-runewidth v0.0.4/go.mod"
	"github.com/mattn/go-runewidth v0.0.9"
	"github.com/mattn/go-runewidth v0.0.9/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/mitchellh/go-ps v1.0.0"
	"github.com/mitchellh/go-ps v1.0.0/go.mod"
	"github.com/muesli/crunchy v0.4.0"
	"github.com/muesli/crunchy v0.4.0/go.mod"
	"github.com/muesli/goprogressbar v0.0.0-20190807022807-e540249d2ac1"
	"github.com/muesli/goprogressbar v0.0.0-20190807022807-e540249d2ac1/go.mod"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.0.1"
	"github.com/russross/blackfriday/v2 v2.0.1/go.mod"
	"github.com/schollz/closestmatch v0.0.0-20190308193919-1fbe626be92e"
	"github.com/schollz/closestmatch v0.0.0-20190308193919-1fbe626be92e/go.mod"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0/go.mod"
	"github.com/skip2/go-qrcode v0.0.0-20191027152451-9434209cb086"
	"github.com/skip2/go-qrcode v0.0.0-20191027152451-9434209cb086/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/testify v1.5.1"
	"github.com/stretchr/testify v1.5.1/go.mod"
	"github.com/urfave/cli/v2 v2.2.0"
	"github.com/urfave/cli/v2 v2.2.0/go.mod"
	"github.com/xrash/smetrics v0.0.0-20170218160415-a3153f7040e9"
	"github.com/xrash/smetrics v0.0.0-20170218160415-a3153f7040e9/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4"
	"golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4/go.mod"
	"golang.org/x/crypto v0.0.0-20200423211502-4bdfaf469ed5"
	"golang.org/x/crypto v0.0.0-20200423211502-4bdfaf469ed5/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20200421231249-e086a090c8fd"
	"golang.org/x/net v0.0.0-20200421231249-e086a090c8fd/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190626150813-e07cf5db2756/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
	"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
	"golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd/go.mod"
	"golang.org/x/sys v0.0.0-20200420163511-1957bb5e6d1f"
	"golang.org/x/sys v0.0.0-20200420163511-1957bb5e6d1f/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.2"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"google.golang.org/protobuf v0.0.0-20200109180630-ec00e32a8dfd/go.mod"
	"google.golang.org/protobuf v0.0.0-20200221191635-4d8936d0db64/go.mod"
	"google.golang.org/protobuf v0.0.0-20200228230310-ab0ca4ff8a60/go.mod"
	"google.golang.org/protobuf v1.20.1-0.20200309200217-e05f789c0967/go.mod"
	"google.golang.org/protobuf v1.21.0"
	"google.golang.org/protobuf v1.21.0/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f"
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f/go.mod"
	"gopkg.in/yaml.v2 v2.2.2"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.8"
	"gopkg.in/yaml.v2 v2.2.8/go.mod"
	"rsc.io/qr v0.2.0"
	"rsc.io/qr v0.2.0/go.mod"
)

go-module_set_globals

DESCRIPTION="a simple but powerful password manager for the terminal"
HOMEPAGE="https://www.gopass.pw/"
SRC_URI="https://github.com/gopasspw/gopass/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MIT Apache-2.0 BSD MPL-2.0 BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=">=dev-lang/go-1.11"
RDEPEND="
	dev-vcs/git
	>=app-crypt/gnupg-2
"

src_install() {
	dobin gopass

	einstalldocs

	# install fish completion
	./gopass completion fish > "${T}"/${PN}.fish || die
	insinto /usr/share/fish/vendor_completions.d
	doins "${T}"/${PN}.fish

	# install bash completion
	./gopass completion bash > "${T}"/${PN} || die
	dobashcomp "${T}"/${PN}

	# install zsh completion
	./gopass completion zsh > "${T}"/${PN}.zsh || die
	insinto /usr/share/zsh/site-functions
	newins "${T}"/${PN}.zsh _${PN}
}
