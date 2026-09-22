class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.9.1/serie-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "05b69d26209403ca998dab21fc7e2f6441388d22a37ad44ad40a14488bcc82bc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.9.1/serie-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "6ef05432aec2c39c59177f0e83e96f1b4170c949fe7c2b979d4cf6657101b3d2"
    end
  end

  def install
    bin.install "serie"
  end
end
