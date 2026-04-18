class Rememora < Formula
  desc "Persistent, cross-agent memory for AI coding assistants"
  homepage "https://github.com/Rememora/rememora"
  version "1.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/Rememora/rememora/releases/download/v#{version}/rememora-universal-apple-darwin.tar.gz"
    sha256 "62b2f92583e5d072842d38aa9f5b2b54e8ddf42d9fa47bf7d57ec7fe4b092885"
  end

  on_linux do
    url "https://github.com/Rememora/rememora/releases/download/v#{version}/rememora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f80a7812eaf1b86fb83ca3fe2a4e899b1f7a4fd48f9eeca6512e5c2ec56d4cfd"
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
