class Ddv < Formula
  desc "Terminal DynamoDB Viewer"
  homepage "https://github.com/lusingander/ddv"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/ddv/releases/download/v0.1.0/ddv-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ac40150c1918fee65d8d8301f1a98d9935b52dfd878700684e76a49d4613fa6e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/ddv/releases/download/v0.1.0/ddv-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "afc5e9cc5eb43844bf0e23b16d5cede6ffa6dff14ebc23f1e6ec19e4d2789a7a"
    end
  end

  def install
    bin.install "ddv"
  end
end
