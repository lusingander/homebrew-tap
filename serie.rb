class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.5.3/serie-0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "50896314f6efc57da84792105978bd2d8240f4a9b781ab319dbbd9145226e383"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.5.3/serie-0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "396ab741185d80cf909aee5b0a26bca3448bf84e5433693ee0754d50c82a71f4"
    end
  end

  def install
    bin.install "serie"
  end
end
