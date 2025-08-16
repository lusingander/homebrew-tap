class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.7.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.7.4/stu-0.7.4-aarch64-apple-darwin.tar.gz"
      sha256 "23a97b99fc086f100030e6348739bc70efdf073d0105539d200d095d3f0469dd"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.4/stu-0.7.4-x86_64-apple-darwin.tar.gz"
      sha256 "caa70e138cbbb24d270c6b1aeaf286246a46ae138e5c120cafd2d7bc8270899d"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.4/stu-0.7.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bb92469c4036643429ce81f034570391522f8b6408b688a3f9f9e34987d148d"
    end
  end

  def install
    bin.install "stu"
  end
end
