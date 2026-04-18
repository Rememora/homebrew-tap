class Rememora < Formula
  desc "Persistent, cross-agent memory for AI coding assistants"
  homepage "https://github.com/Rememora/rememora"
  version "1.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/Rememora/rememora/releases/download/v#{version}/rememora-universal-apple-darwin.tar.gz"
    sha256 "e14fb287e9b78dbecab0b1df7e973f65968ac30398b4abcb9a54f6f4531f2775"
  end

  on_linux do
    url "https://github.com/Rememora/rememora/releases/download/v#{version}/rememora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9493e3ab1a652b298d9e876beb447a7c3599d20fefee2570e1f90328986f5849"
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
