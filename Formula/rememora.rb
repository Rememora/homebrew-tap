class Rememora < Formula
  desc "Persistent, cross-agent memory for AI coding assistants"
  homepage "https://github.com/Rememora/rememora"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/Rememora/rememora/releases/download/v#{version}/rememora-universal-apple-darwin.tar.gz"
    sha256 "d36843b9818404fdd9dae1d6435cd580ad605c1d77c417c054e1dc76a9d92663"
  end

  on_linux do
    url "https://github.com/Rememora/rememora/releases/download/v#{version}/rememora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d47f59ebfb7511790e15d1efbbf8b0c92c811dbd94443881a94da643b706cdf3"
  end

  def install
    bin.install "rememora"
  end

  test do
    assert_match "rememora", shell_output("#{bin}/rememora --version")
  end
end
