class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.10.0/serie-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "6bba3a666560d58dd754027ac611894168ff5194fb982f9cd5d06c1e1935345b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.10.0/serie-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "248dbffb31166e63b43cc68f099f7422470315b21618e5c11932fde251445a2e"
    end
  end

  def install
    bin.install "serie"
  end
end
