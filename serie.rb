class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.4.3/serie-0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "b2cc0a293d955b00f99aa241d19026ca13818a53fb5e1ddb390cc641799c4614"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.4.3/serie-0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "21591b94b80199654cd0b1c87acc6b1bef87e7944b80ea314c56810738e0d756"
    end
  end

  def install
    bin.install "serie"
  end
end
