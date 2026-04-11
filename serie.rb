class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.7.2/serie-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "9670c0bb3fe84462dfa4f69a560f2a789427fe4db19128aa9a3f8be462ee3f56"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.7.2/serie-0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "bdf8ecb2250859f13c8724749ca2714a41d91c0c33d129e7b07ff8dd22a98521"
    end
  end

  def install
    bin.install "serie"
  end
end
