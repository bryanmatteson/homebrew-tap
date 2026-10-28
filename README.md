# Bryan Matteson’s Homebrew Tap

Install the Tcld command-line tools:

```sh
brew install bryanmatteson/tap/tcld
```

Install the TCLD desktop application:

```sh
brew install --cask bryanmatteson/tap/tcld
```

Release 1.0.1 uses matching package and executable versions. The macOS CLI and
desktop packages are signed with Developer ID and notarized by Apple; apps and
DMGs have stapled tickets. The desktop includes a private Tcl runtime.

Starting with 1.0.1, **Help → Check for Updates…** checks for signed desktop
updates when requested. Installing and restarting require confirmation. Users
of the earlier 1.0.0 packages (which report build version 0.3.2) need one upgrade
through Homebrew or a direct download to enable future in-app updates.

Upgrade either installation with Homebrew:

```sh
brew update
brew upgrade --formula bryanmatteson/tap/tcld
brew upgrade --cask bryanmatteson/tap/tcld
```

Packages are built and checked locally by the
[Tcld distribution runner](https://github.com/bryanmatteson/tcld/blob/main/DISTRIBUTION.md)
and downloaded from GitHub Releases. CI runs on the maintainer’s machine, using
OrbStack for Linux, only when requested or before a release. This tap has no
GitHub Actions workflows or automatic publishing jobs.

See the [Tcld repository](https://github.com/bryanmatteson/tcld) for documentation
and the [release downloads](https://github.com/bryanmatteson/tcld/releases) for
platform and build details.
