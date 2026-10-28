class Tcld < Formula
  desc "Tcl bytecode analysis and debugging"
  homepage "https://github.com/bryanmatteson/tcld"
  version "1.0.0"
  license "Apache-2.0"
  on_macos do
    revision 1
    on_arm do
      url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.0/tcld-0.3.2-aarch64-apple-darwin.tar.gz?revision=1"
      sha256 "9d8c065b76064456a7a7cd998d5a0bfd3eae09595ad7d62579cc070455cb9618"
    end
    on_intel do
      url "https://github.com/bryanmatteson/tcld/releases/download/v1.0.0/tcld-0.3.2-x86_64-apple-darwin.tar.gz?revision=1"
      sha256 "44dd3418d0566155370507c9005ca2b947b8ed3c8cfb42589fadc9c1e8db2610"
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
