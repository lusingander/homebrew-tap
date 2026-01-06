class Ddv < Formula
  desc "Terminal DynamoDB Viewer"
  homepage "https://github.com/lusingander/ddv"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/ddv/releases/download/v0.3.0/ddv-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "8e6cd4f8fafdf52279c5c9c10bed3269e9ba044f7b76d6e75b7027ec2ea6833e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/ddv/releases/download/v0.3.0/ddv-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "c43592641b75c69804c25c9bdd463b99eaaaa0978283bc5d8fbff1dce4d618b2"
    end
  end

  def install
    bin.install "ddv"
  end
end
