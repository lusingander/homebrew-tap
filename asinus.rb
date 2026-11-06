class Asinus < Formula
  desc "Terminal Color Theme Explorer"
  homepage "https://github.com/lusingander/asinus"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/asinus/releases/download/v0.1.0/asinus-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "6a300a8bcc89b8969e0b407d056fdab5ec17e917847612f063d5f997ccaa6d4e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/asinus/releases/download/v0.1.0/asinus-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "20349a84c684891b36a272bcb787e319e92d349f414822018d90e8d009ed03bc"
    end
  end

  def install
    bin.install "asinus"
  end
end
