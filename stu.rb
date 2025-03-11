class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.7.0/stu-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "999a580937bdcb417ae09eea69263fe2adbfb3bb2250e10af275e93c3b0e594f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.0/stu-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "8fb06659894210201531dee385d0b0e6178718fd7ced096dfab9a7ee6e243139"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.0/stu-0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28c59adb0b5d2639986b613b842019606579cf448f1660abbf68065ebc2f0131"
    end
  end

  def install
    bin.install "stu"
  end
end
