class Sauva < Formula
  desc "Terminal Unicode Explorer"
  homepage "https://github.com/lusingander/sauva"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/sauva/releases/download/v0.2.0/sauva-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "bfa5e3f2c07025068ed5035ba4ee5a9623c41d139b694919971a6e9121ce8aab"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/sauva/releases/download/v0.2.0/sauva-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "08b456b564be77cb584bf3b6d5e14392ada0f31a8681d72d1bd2582aa78bb3a2"
    end
  end

  def install
    bin.install "sauva"
  end
end
