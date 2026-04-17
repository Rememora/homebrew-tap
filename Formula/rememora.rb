class Rememora < Formula
  desc "Persistent, cross-agent memory for AI coding assistants"
  homepage "https://github.com/Rememora/rememora"
  version "0.3.2"
  license "MIT"

  on_macos do
    url "https://github.com/Rememora/rememora/releases/download/v#{version}/rememora-universal-apple-darwin.tar.gz"
    sha256 "6946911795d8e5dd35850df6a8726b45c5e8629492d3878e33d3fcaad2e284eb"
  end

  on_linux do
    url "https://github.com/Rememora/rememora/releases/download/v#{version}/rememora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8d64de9486196a75f92026f2d58d7ff6cd00a0f1695b2091fae94d2228228f89"
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
