cask "tcld" do
  version "1.0.0,1"
  on_arm do
    sha256 "1dfa4190a48131a2456acf6d3e73390b96f85b9afdc9f6ab51ee31862d3a1bbc"
    url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.0/TCLD-aarch64-apple-darwin-TCLD_0.3.2_aarch64-signed.dmg"
  end
  on_intel do
    sha256 "24f564169197bdc00aa0645efdd6a2366037c435c7a55f3cbbea50b227fd8a63"
    url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.0/TCLD-x86_64-apple-darwin-TCLD_0.3.2_x64-signed.dmg"
  end
  name "TCLD"
  desc "Tcl bytecode analysis workbench"
  homepage "https://github.com/bryanmatteson/tcld"
  depends_on macos: :big_sur
  app "TCLD.app"
  caveats <<~EOS
    Release 1.0.0 reuses build 0.3.2 without recompilation.
    The application reports its original build version.
    In-app updates are unavailable; use Homebrew to update.
  EOS
end
