cask "tcld" do
  version "1.0.1"
  on_arm do
    sha256 "17cf9c648ae7074f451ef14c410df6707739ad390bfa0c1c0c268dda40e98773"
    url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.1/TCLD-aarch64-apple-darwin-TCLD_1.0.1_aarch64.dmg"
  end
  on_intel do
    sha256 "d8df006a3deb6fcdfecbe0a388188f81b0c91de958cc5375e6c57806d958840b"
    url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.1/TCLD-x86_64-apple-darwin-TCLD_1.0.1_x64.dmg"
  end
  name "TCLD"
  desc "Tcl bytecode analysis workbench"
  homepage "https://github.com/bryanmatteson/tcld"
  depends_on macos: :big_sur
  app "TCLD.app"
  auto_updates true
end
