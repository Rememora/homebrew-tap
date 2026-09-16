class Rememora < Formula
  desc "Persistent, cross-agent memory for AI coding assistants"
  homepage "https://github.com/Rememora/rememora"
  license "MIT"

  if OS.mac?
    url "https://github.com/Rememora/rememora/releases/download/v1.7.0/rememora-universal-apple-darwin.tar.gz"
    sha256 "fa5d8e65e081862e38bebc71eb3f7a6ee1da0b727e685e6f92fd73c8b11d94d1"
  elsif OS.linux?
    url "https://github.com/Rememora/rememora/releases/download/v1.7.0/rememora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4d2a44009f68bc0a52baf005a6bef2ff1000738997627ebb38cfa5605cb4aacb"
  end

  def install
    bin.install "rememora"
  end

  def caveats
    <<~EOS
      To configure your AI agents to use rememora:
        rememora setup          # preview changes
        rememora setup --apply  # apply changes
    EOS
  end

  test do
    assert_match "rememora", shell_output("#{bin}/rememora --version")
  end
end
