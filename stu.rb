class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.7.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.7.6/stu-0.7.6-aarch64-apple-darwin.tar.gz"
      sha256 "37ccee93b4f38c0224990674aa0f84410abfb79e071e94b8b6d9f15c39fae8f3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.6/stu-0.7.6-x86_64-apple-darwin.tar.gz"
      sha256 "9797b99d5c82eb976211f4093b9c913a4c16802d3fe3b8d0a27297732c0f24ef"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.6/stu-0.7.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ae608bd9cd39779ab722ebc10978ebd4dbc8ad523c8b0f1e175065cd8f7f1084"
    end
  end

  def install
    bin.install "stu"
  end
end
