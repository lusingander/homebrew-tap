class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.5.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.5.4/serie-0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "d8e62e7216f2a0649b844425f402208d8da30d9c1fc5329606125720f14a582b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.5.4/serie-0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "b1bc45cf5f04a7f09f80598b3207881b7fad1444a06348dae67bb82956005e6b"
    end
  end

  def install
    bin.install "serie"
  end
end
