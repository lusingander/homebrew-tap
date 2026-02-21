class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.6.1/serie-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "4b0fa71c8673fa713494f37797bd4b9bd986f4d15f25ac7f1983e0791f5bbd3e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.6.1/serie-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "4871d866a42f18fe1db431a4acd012571ad59a78c6035cceb41c887316e35e62"
    end
  end

  def install
    bin.install "serie"
  end
end
