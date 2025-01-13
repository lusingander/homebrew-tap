class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.4.2/serie-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "084829de54136376f7968420d0b6157a0e3da8fd2f3147d8fda5289a4d0153e5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.4.2/serie-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "1f1f4c4520b7474dcbc2a9307c3de898991c86bf88d413a6c4973ae74ea7b736"
    end
  end

  def install
    bin.install "serie"
  end
end
