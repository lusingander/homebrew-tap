class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.8.0/serie-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "210508902e589977e7dc6ecbbe0cee9cb735a90eeb5d4e24ff84cde0fa188cbd"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.8.0/serie-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "ab288fe2e40b0af1870e5dfe12272b05be5d065c9786170c5e9d6eefd7d738cd"
    end
  end

  def install
    bin.install "serie"
  end
end
