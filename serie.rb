class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.5.1/serie-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "95854de0e5404eaed2fb73b01f50a4a524975f78538babf419718c41f941315c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.5.1/serie-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "6fe9722e44ee1ccbb4a685bb1f7b882fbffea26b54ed6c6122d0ff8255a79594"
    end
  end

  def install
    bin.install "serie"
  end
end
