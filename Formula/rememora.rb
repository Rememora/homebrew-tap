class Rememora < Formula
  desc "Persistent, cross-agent memory for AI coding assistants"
  homepage "https://github.com/Rememora/rememora"
  license "MIT"

  if OS.mac?
    url "https://github.com/Rememora/rememora/releases/download/v1.6.0/rememora-universal-apple-darwin.tar.gz"
    sha256 "8ae8dc1e4e0a23b0210a0e83db2ba7ba5aefd5e0680c16bf0cfcbe1c4cb3ff55"
  elsif OS.linux?
    url "https://github.com/Rememora/rememora/releases/download/v1.6.0/rememora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5c18f87ca23e6d85899d010a48503447f4a01bd41e26774c238b2128a485eecc"
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
