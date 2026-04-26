class Rememora < Formula
  desc "Persistent, cross-agent memory for AI coding assistants"
  homepage "https://github.com/Rememora/rememora"
  license "MIT"

  if OS.mac?
    url "https://github.com/Rememora/rememora/releases/download/v1.5.0/rememora-universal-apple-darwin.tar.gz"
    sha256 "3f987ba0b3d6ff6e25673375815788b2c8d658662cca8c49ffb8aba7e1da1d92"
  elsif OS.linux?
    url "https://github.com/Rememora/rememora/releases/download/v1.5.0/rememora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2e61be9ba45824f7bd4a8a55d0d1572798967d5df987cbc60f186b942b39fbb1"
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
