class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.8.0/stu-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "6d8e43498c6a601ff62b759b0a5ab59ddaa72b67d05aa0f9d3f6a19019db94eb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.8.0/stu-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "edf3b55467d3a055545065ea82de511a424e62576b88796ee14e1b46e3ffb851"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.8.0/stu-0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c549afca78a544602ec0daeed03ca9b80d1c3fc5401dad07ccd6bee938d309a"
    end
  end

  def install
    bin.install "stu"
  end
end
