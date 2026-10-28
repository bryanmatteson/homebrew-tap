class Tcld < Formula
  desc "Tcl bytecode analysis and debugging"
  homepage "https://github.com/bryanmatteson/tcld"
  version "1.0.1"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.1/tcld-1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "5c34f39f5b792eca1effaa170640be2ae6dd9f12a44060de01ac1e0933b02b6e"
    end
    on_intel do
      url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.1/tcld-1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "7fee921adf71d9035af6d3c91fc5ff811df2bf3e329a2c0f2dd716ef81bf3683"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.1/tcld-1.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7e460daf1f67e510e70060b2ff0c0f937928bd32b60ff3c70974af15a972dec"
    end
  end
  def install
    bin.install "tcld"
    (lib/"tcld").install "lib/tcld/nub"
    pkgshare.install "examples"
  end
  test do
    assert_match "tcld 1.0.1", shell_output("#{bin}/tcld --version")
    assert_match "proc ", shell_output("#{bin}/tcld decompile #{pkgshare}/examples/public_complex_fixture.tbc")
  end
end
