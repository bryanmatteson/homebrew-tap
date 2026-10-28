# Bryan Matteson’s Homebrew Tap

Install the Tcld command-line tools:

```sh
brew install bryanmatteson/tap/tcld
```

Install the TCLD desktop application:

```sh
brew install --cask bryanmatteson/tap/tcld
```

The 1.0.0 release reuses the last validated packages without rebuilding. The
CLI and desktop About dialog retain build version 0.3.2. The macOS CLI and desktop packages are
signed with Developer ID and notarized by Apple; apps and DMGs have stapled
tickets. In-app updates are unavailable in these reused binaries. macOS CLI
revision 1 and desktop cask package revision 1 supersede the initial unsigned
publication.

Upgrade either installation with Homebrew:

```sh
brew update
brew upgrade tcld
brew upgrade --cask tcld
```

Packages are built and checked locally by the
[Tcld distribution runner](https://github.com/bryanmatteson/tcld/blob/main/DISTRIBUTION.md)
and downloaded from GitHub Releases. CI runs on the maintainer’s machine, using
OrbStack for Linux, only when requested or before a release. This tap has no
GitHub Actions workflows or automatic publishing jobs.

See the [Tcld repository](https://github.com/bryanmatteson/tcld) for documentation
and the [release downloads](https://github.com/bryanmatteson/tcld/releases) for
platform and build details.
