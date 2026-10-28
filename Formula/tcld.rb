class Tcld < Formula
  desc "Tcl bytecode analysis and debugging"
  homepage "https://github.com/bryanmatteson/tcld"
  version "1.0.0"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.0/tcld-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "55c3f44c067210bd29c619ee9936ff41e22b34c4d4a5335e7a5475ed2c8b54bd"
    end
    on_intel do
      url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.0/tcld-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "73db4111283be53db609808bef4fb7e810b3f53128e8ecabe8ea4334dd2fd3f0"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.0/tcld-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03a6e0386db5f0968b6f6cdc6b171e3932a9aba2cbab3e8fa4752c1e08eff7ed"
    end
  end
  def install
    bin.install "tcld"
    (lib/"tcld").install "lib/tcld/nub"
    pkgshare.install "examples"
  end
  test do
    assert_match "tcld 0.3.2", shell_output("#{bin}/tcld --version")
    assert_match "proc ", shell_output("#{bin}/tcld decompile #{pkgshare}/examples/public_complex_fixture.tbc")
  end
end
