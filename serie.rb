class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.7.1/serie-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "bc78c5b41891a4affccd81709011ed41bb92fa67bd4bb3c5f650e0b4520d43da"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.7.1/serie-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "3a780e8c4a47bb1139d9c27a77f2546fb46608225d835167b194e6b729ad17c8"
    end
  end

  def install
    bin.install "serie"
  end
end
