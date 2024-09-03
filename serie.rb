class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.3.0/serie-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c5842952bae54829bfeaf65f695dd1d5fae4fd8dec766a162e4a0913ca09967c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.3.0/serie-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "1c75cc42337bb00de9a1afb02cc67d1bce4d6b62f8ae09270ad2fd8fa1ab3d7c"
    end
  end

  def install
    bin.install "serie"
  end
end
