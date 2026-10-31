class Sauva < Formula
  desc "Terminal Unicode Explorer"
  homepage "https://github.com/lusingander/sauva"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/sauva/releases/download/v0.7.0/sauva-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "0ee055a85d3cf0fc2216b892ee9c5b58d4d211a3227512819f30ddaa28cf91fc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/sauva/releases/download/v0.7.0/sauva-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "cbc1a4015441337ced447a8cacd7ac1042f3d6649b82edd6a9d8b2a3b422a855"
    end
  end

  def install
    bin.install "sauva"
  end
end
