class Ddv < Formula
  desc "Terminal DynamoDB Viewer"
  homepage "https://github.com/lusingander/ddv"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/ddv/releases/download/v0.3.1/ddv-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "757104c00146ddba685ed2b63840caa84f5bd1c2c52a743c0255f11bcb7842c5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/ddv/releases/download/v0.3.1/ddv-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "feb0cfcbb86a52acd0d44d06632fdd03f661474dd1422f10f8c749753938630b"
    end
  end

  def install
    bin.install "ddv"
  end
end
