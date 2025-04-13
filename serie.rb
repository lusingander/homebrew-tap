class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.4.5/serie-0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "363bca03207d5323ecaca52401eedb4e43072244466fa22e4f8be25bb4e2c464"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.4.5/serie-0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "6d7350a6f7a3f846dae8dfdffc4d9f965b4770d85dc05bc273982147fa81aeca"
    end
  end

  def install
    bin.install "serie"
  end
end
