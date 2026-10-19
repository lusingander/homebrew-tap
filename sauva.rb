class Sauva < Formula
  desc "Terminal Unicode Explorer"
  homepage "https://github.com/lusingander/sauva"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/sauva/releases/download/v0.6.0/sauva-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "af87a4ccfb89cf6c9abd6ead9e0f4a5d6bc6089c06a5706072c70d538bf54f51"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/sauva/releases/download/v0.6.0/sauva-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "16cf2671e7c4317d52089d24771d88e337ee184b4675f2334c61593a5d267976"
    end
  end

  def install
    bin.install "sauva"
  end
end
