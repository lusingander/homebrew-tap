class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.5.2/serie-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "338e86f04fcadd9747a2e76a0c4405e16f8a93479c8c6f686fdcf5e656a3aa0a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.5.2/serie-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "32613a837030b679efaae0cc5f15c22edc2a818ee9cbcb465349d827626c2453"
    end
  end

  def install
    bin.install "serie"
  end
end
