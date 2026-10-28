cask "tcld" do
  version "1.0.0"
  on_arm do
    sha256 "4917fb12529f491e6fedffe146fc314bb8b0a7f7995c7019dd092c6bb617bb18"
    url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.0/TCLD-aarch64-apple-darwin-TCLD_0.3.2_aarch64.dmg"
  end
  on_intel do
    sha256 "eea794c6ca73304478ca12dcf0e1c2a974682ccbe3d37690952304ad486bd3f7"
    url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.0/TCLD-x86_64-apple-darwin-TCLD_0.3.2_x64.dmg"
  end
  name "TCLD"
  desc "Tcl bytecode analysis workbench"
  homepage "https://github.com/bryanmatteson/tcld"
  depends_on macos: :big_sur
  app "TCLD.app"
  caveats <<~EOS
    Release 1.0.0 reuses build 0.3.2 without recompilation.
    The application reports its original build version.
    This desktop build is unsigned and not notarized; in-app updates are unavailable.
  EOS
end
