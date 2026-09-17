class Sauva < Formula
  desc "Terminal Unicode Explorer"
  homepage "https://github.com/lusingander/sauva"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/sauva/releases/download/v0.1.0/sauva-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "091400649f580b62306c68cd246fcba35bb821bce1e802546f881e4846b9cfa5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/sauva/releases/download/v0.1.0/sauva-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "8ca940debcc2f6706dae940668f817c14f94a429b2824b718eab04c30a065869"
    end
  end

  def install
    bin.install "sauva"
  end
end
