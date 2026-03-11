class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.7.0/serie-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "de6202a293093a1ffe269e61a0b3fcfffea82f605f544e57fa10e3d417905c4c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.7.0/serie-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "1ac2c05e7130fd2751457d760bbf1fec4aeeb0048998cbfe91a56800f21f6448"
    end
  end

  def install
    bin.install "serie"
  end
end
