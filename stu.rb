class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.2.5/stu-0.2.5-darwin-arm64.tar.gz"
      sha256 "3163297e883bbef1c5550f380d004e35c472620241723fcb62c3d5473f29609a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.2.5/stu-0.2.5-darwin-amd64.tar.gz"
      sha256 "9055d38d01d41851ff10368e7e9af575bcdcda969c4105c56b523acbcb4942b3"
    end
  end

  def install
    bin.install "stu"
  end
end
