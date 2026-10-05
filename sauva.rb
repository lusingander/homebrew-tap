class Sauva < Formula
  desc "Terminal Unicode Explorer"
  homepage "https://github.com/lusingander/sauva"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/sauva/releases/download/v0.4.0/sauva-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "9356ed2f73fb56302b859a6b590db4e3fc188f85f908fc44cccd7f6f1115bcb7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/sauva/releases/download/v0.4.0/sauva-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "d1da450d7fc67bd1e0297b5750dbc6e8db09b828d53173043f32d4be6eff9bcc"
    end
  end

  def install
    bin.install "sauva"
  end
end
