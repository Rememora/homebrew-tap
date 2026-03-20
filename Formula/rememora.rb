class Rememora < Formula
  desc "Persistent, cross-agent memory for AI coding assistants"
  homepage "https://github.com/Rememora/rememora"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/Rememora/rememora/releases/download/v#{version}/rememora-universal-apple-darwin.tar.gz"
    sha256 "PLACEHOLDER"
  end

  on_linux do
    url "https://github.com/Rememora/rememora/releases/download/v#{version}/rememora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "rememora"
  end

  test do
    assert_match "rememora", shell_output("#{bin}/rememora --version")
  end
end
