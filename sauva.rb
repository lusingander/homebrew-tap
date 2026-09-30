class Sauva < Formula
  desc "Terminal Unicode Explorer"
  homepage "https://github.com/lusingander/sauva"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/sauva/releases/download/v0.3.0/sauva-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "773fe6de9f2e345e26d1a3439fb0b6062581be5e6cb98daec0480b5b4196b4b1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/sauva/releases/download/v0.3.0/sauva-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "d0b589693573763f90bef03e44a6ec284a2e9036ad3f691be7331183a03f1d42"
    end
  end

  def install
    bin.install "sauva"
  end
end
