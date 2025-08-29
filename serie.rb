class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.5.0/serie-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "eb40ad8b2b7af55d0bbfb2a8c4987aab47e5d0b8a25779cce94ba14b9e870d27"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.5.0/serie-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "030b44f472a311fa406be90f1e181297779287a6a9603567eca087030915140b"
    end
  end

  def install
    bin.install "serie"
  end
end
