class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.4.1/serie-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "cc8c9a646a1d131e4a26d974ee6ff9625ee57cd92954b95d9657ef74281d07af"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.4.1/serie-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "65e2c123cc32723a93a37b81990c42ee008843965cc4e282aee374f75e78b8ab"
    end
  end

  def install
    bin.install "serie"
  end
end
