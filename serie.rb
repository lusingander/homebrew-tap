class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.4.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.4.6/serie-0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "28f1a28a4e9245ea84883726dcdeefdd2d727848d79291f064cab36455df4bc9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.4.6/serie-0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "9f50657c14208183aedae7b1cc746186f40849292bb6facd8e8a65d73369c3b8"
    end
  end

  def install
    bin.install "serie"
  end
end
