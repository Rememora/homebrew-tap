class Rememora < Formula
  desc "Persistent, cross-agent memory for AI coding assistants"
  homepage "https://github.com/Rememora/rememora"
  license "MIT"

  if OS.mac?
    url "https://github.com/Rememora/rememora/releases/download/v1.4.1/rememora-universal-apple-darwin.tar.gz"
    sha256 "078fe27f3e727746e19b1524bbab1905493492d7080c07426d13498729230f13"
  elsif OS.linux?
    url "https://github.com/Rememora/rememora/releases/download/v1.4.1/rememora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "133045de7942926a9be9716d8fed43d573ffb0e0baae18af924a12648235ba2f"
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
